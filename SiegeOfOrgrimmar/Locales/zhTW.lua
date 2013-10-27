local L = BigWigs:NewBossLocale("Immerseus", "zhTW")
if not L then return end
if L then
	L.win_yell = "啊，你成功了!水又再次純淨了。"
end

L = BigWigs:NewBossLocale("The Fallen Protectors", "zhTW")
if L then
	L.defile = "Defiled Ground cast"

	L.custom_off_bane_marks = "Shadow Word: Bane marker"
	L.custom_off_bane_marks_desc = "To help dispelling assignments, mark the inital people who have Shadow Word: Bane on them with {rt1}{rt2}{rt3}{rt4}{rt5} (in that order, not all marks may be used), requires promoted or leader."

	L.no_meditative_field = "NO Meditative Field!"

	L.intermission = "Desperate Measures"
	L.intermission_desc = "Warnings for when you are getting close to any of the bosses using Desperate Measures"

	L.inferno_self = "Inferno Strike on you"
	L.inferno_self_desc = "Special countdown when Inferno Strike is on you."
	L.inferno_self_bar = "You explode!"
end

L = BigWigs:NewBossLocale("Norushen", "zhTW")
if L then
	L.pre_pull = "準備開戰"
	L.pre_pull_desc = "準備與首領戰鬥前的計時器"
	L.pre_pull_trigger = "很好，我會創造一個力場隔離你們的腐化。"

	L.big_adds = "Big adds"
	L.big_adds_desc = "Warning for killing big adds inside/outside"
	L.big_add = "Big add (%d)"
	L.big_add_killed = "Big add killed! (%d)"
end

L = BigWigs:NewBossLocale("Sha of Pride", "zhTW")
if L then
	L.custom_off_titan_mark = "Gift of the Titans marker"
	L.custom_off_titan_mark_desc = "Mark people that have Gift of the Titans with {rt1}{rt2}{rt3}{rt4}{rt5}{rt6}{rt7}{rt8}, requires promoted or leader.\n|cFFFF0000Only 1 person in the raid should have this enabled to prevent marking conflicts.|r"

	L.projection_message = "Go to |cFF00FF00GREEN|r arrow!"
	L.projection_explosion = "Projection explosion"

	L.big_add_bar = "Big add"
	L.big_add_spawning = "Big add spawning!"
	L.small_adds = "Small adds"

	L.titan_pride = "泰坦+傲慢 : %s"
end

L = BigWigs:NewBossLocale("Galakras", "zhTW")
if L then
	L.demolisher = "石毀車"
	L.demolisher_desc = "柯爾克隆石毀車進入戰鬥計時器"

	L.towers = "高塔"
	L.towers_desc = "當高塔被突破時發出警報"
	L.south_tower_trigger = "封鎖南塔的門已經遭到破壞!"
	L.south_tower = "南塔"
	L.north_tower_trigger = "封鎖北塔的門已經遭到破壞!"
	L.north_tower = "北塔"
	L.tower_defender = "Tower defender"

	--L.adds_desc = "Timers for when a new set of adds enter the fight."
	--L.adds_trigger1 = "Bring her down quick so I can wrap my fingers around her neck." -- Lady Sylvanas Windrunner
	--L.adds_trigger2 = "Here they come!" -- Lady Jaina Proudmoore
	--L.adds_trigger3 = "Dragonmaw, advance!"
	--L.adds_trigger4	= "For Hellscream!"
	--L.adds_trigger5	= "Next squad, push forward!"

	L.custom_off_shaman_marker = "薩滿標記"
	L.custom_off_shaman_marker_desc = "To help interrupt assignments, mark the Dragonmaw Tidal Shamans with {rt1}{rt2}{rt3}{rt4}{rt5}, requires promoted or leader.\n|cFFFF0000Only 1 person in the raid should have this enabled to prevent marking conflicts.|r\n|cFFADFF2FTIP: If the raid has chosen you to turn this on, quickly mousing over the shamans is the fastest way to mark them.|r"
end

L = BigWigs:NewBossLocale("Iron Juggernaut", "zhTW")
if L then
	L.custom_off_mine_marks = "Mine marker"
	L.custom_off_mine_marks_desc = "To help soaking assignments, mark the Crawler Mines with {rt1}{rt2}{rt3}, requires promoted or leader.\n|cFFFF0000Only 1 person in the raid should have this enabled to prevent marking conflicts.|r\n|cFFADFF2FTIP: If the raid has chosen you to turn this on, quickly mousing over all the mines is the fastest way to mark them.|r"
end

L = BigWigs:NewBossLocale("Kor'kron Dark Shaman", "zhTW")
if L then
	L.blobs = "Blobs"

	L.custom_off_mist_marks = "Toxic Mist marker"
	L.custom_off_mist_marks_desc = "To help healing assignments, mark the people who have Toxic Mist on them with {rt1}{rt2}{rt3}{rt4}{rt5}, requires promoted or leader.\n|cFFFF0000Only 1 person in the raid should have this enabled to prevent marking conflicts.|r"
end

L = BigWigs:NewBossLocale("General Nazgrim", "zhTW")
if L then
	L.custom_off_bonecracker_marks = "Bonecracker marker"
	L.custom_off_bonecracker_marks_desc = "To help healing assignments, mark the people who have Bonecracker on them with {rt1}{rt2}{rt3}{rt4}{rt5}, requires promoted or leader.\n|cFFFF0000Only 1 person in the raid should have this enabled to prevent marking conflicts.|r"

	L.stance_bar = "%s(現在:%s)"
	L.battle = "戰鬥"
	L.berserker = "狂暴"
	L.defensive = "防禦"

	L.adds_trigger1 = "守住大門!"
	L.adds_trigger2 = "重整部隊!"
	L.adds_trigger3 = "下一隊，來前線!"
	L.adds_trigger4 = "戰士們，快點過來!"
	L.adds_trigger5 = "柯爾克隆，來我身邊!"
	L.adds_trigger_extra_wave = "所有科爾克隆...聽我號令...殺死他們!"
	L.extra_adds = "額外增援部隊"

	L.chain_heal_message = "Your focus is casting Chain Heal!"

	L.arcane_shock_message = "Your focus is casting Arcane Shock!"

	L.focus_only = "|cffff0000Focus target alerts only.|r "
end

L = BigWigs:NewBossLocale("Malkorok", "zhTW")
if L then

end

L = BigWigs:NewBossLocale("Spoils of Pandaria", "zhTW")
if L then

end

L = BigWigs:NewBossLocale("Thok the Bloodthirsty", "zhTW")
if L then
	L.cage_opened = "籠子已打開"
end

L = BigWigs:NewBossLocale("Siegecrafter Blackfuse", "zhTW")
if L then

end

L = BigWigs:NewBossLocale("Paragons of the Klaxxi", "zhTW")
if L then


end

L = BigWigs:NewBossLocale("Garrosh Hellscream", "zhTW")
if L then
	L.intermission = "中場休息"
	L.mind_control = "亚煞极之触"
	--L.empowered_message = "%s is now empowered!"
end

