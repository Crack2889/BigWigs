if tonumber((select(4, GetBuildInfo()))) < 40300 then return end
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod = BigWigs:NewBoss("Spine of Deathwing", 824, 318)
if not mod then return end
mod:RegisterEnableMob(53879, 56598, 55870) -- Deathwing, The Skyfire, Sky Captain Swayze

--------------------------------------------------------------------------------
-- Locales
--

local gripTargets = mod:NewTargetList()
local rollIcon = select(4, EJ_GetSectionInfo(4050))
local allowGraspCheck = true

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.left_start = "about to roll left"
	L.right_start = "about to roll right"
	L.left = "rolls left"
	L.right = "rolls right"

	L.roll, L.roll_desc = EJ_GetSectionInfo(4050)
	L.roll_icon = "ACHIEVEMENT_BG_RETURNXFLAGS_DEF_WSG"
	L.roll_soon = "Barrel roll soon!"

	L.not_hooked = "You are NOT hooked!"
end
L = mod:GetLocale()

--------------------------------------------------------------------------------
-- Initialization
--

function mod:GetOptions()
	return {
		105248, 109457, { 105834, "FLASHSHAKE" }, "roll",
		"bosskill",
	}, {
		[105248] = "general",
	}
end

function mod:OnBossEnable()
	self:Emote("AboutToRoll", L["left_start"], L["right_start"])
	self:Emote("Rolls", L["left"], L["right"])
	self:Log("SPELL_AURA_APPLIED_DOSE", "AbsorbedBlood", 105248)
	self:Log("SPELL_CAST_SUCCESS", "FieryGripCast", 109457)
	self:Log("SPELL_AURA_APPLIED", "FieryGripApplied", 109457)
	self:Log("SPELL_AURA_APPLIED", "Superheated", 105834)
	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")

	self:Death("Win", 53879) -- this is most likely not how you win
end

function mod:OnEngage(diff)
	allowGraspCheck = true
end

--------------------------------------------------------------------------------
-- Event Handlers
--

local function graspCheck()
	if not UnitDebuff("player", (GetSpellInfo(109454))) and allowGraspCheck then -- Grasping Tendrils
		mod:TargetMessage("roll", L["not_hooked"], (UnitName("player")), "Personal", 109454, "Info")
		mod:ScheduleTimer(graspCheck, 1)
	end
end

function mod:AboutToRoll()
	self:Bar("roll", L["roll"], 5, rollIcon)
	self:Message("roll", L["roll_soon"], "Positive", L["roll_icon"])
	graspCheck()
end


function mod:Rolls()
	self:Message("roll", L["roll"], "Positive", L["roll_icon"])
	allowGraspCheck = false
end

function mod:AbsorbedBlood(_, spellId, _, _, spellName, stack)
	if stack > 5 then
		self:Message(105248, ("%s (%d)"):format(spellName, stack), "Urgent", spellId)
	end
end

function mod:FieryGripCast(_, spellId, _, _, spellName)
	-- very random, not sure if there is even a point to this
	self:Bar(109457, "~"..spellName, 28, spellId)
end

function mod:Superheated(_, spellId, _, _, spellName)
	self:Message(105834, spellName, player, "Important", spellId, "Long")
	self:FlashShake(105834)
end

do
	local scheduled = nil
	local function grip(spellName)
		mod:TargetMessage(109457, spellName, gripTargets, "Urgent", 109457)
		scheduled = nil
	end
	function mod:FieryGripApplied(player, spellId, _, _, spellName)
		gripTargets[#gripTargets + 1] = player
		if not scheduled then
			scheduled = true
			self:ScheduleTimer(grip, 0.1, spellName)
		end
	end
end
