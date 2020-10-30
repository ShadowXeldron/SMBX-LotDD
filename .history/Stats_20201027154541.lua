--Stats.lua - Gainus Levelus! This lets you gain experience and level up.
--Should I upload this?
--These are commented because 1. I don't mind people raiding my episode files and 2. I like talking to myself.

--Comments, Lua pretends these don't exist.

--NOTE TO SELF: "stat" is Levels and Experience,

local stats = {} -- API Table. I don't have a clue what this does.

local xpDrops = {

-- Everything from GainXP is to be bannished here.

}


SaveData["episode"] = SaveData["episode"] or {}
local stat = SaveData["episode"]

--Set up the levelup function 

function stats.onInitAPI() --Initialize variables whenever Stats.lua is loaded
    if stat.level == nil then
        stat.level = 1
    end

    if stat.xp == nil then
        stat.xp = 0
    end
end

function stats.LevelUp(x) -- LevelUp - This grants a level. Input a minus number to make the player level down.
	stat.level = stat.level + x
end

function stats.GainXP(x) -- GainXP - This function grants you experience points.
    stat.xp = stat.xp + x
    if stat.xp > stat.level * 5 + stat.level then
        repeat
            stat.xp = stat.xp - stat.level * 5 + stat.level
            stats.LevelUp(1) --Keep going until you haven't got enough experience points
        until stat.xp < stat.level * 5 + stat.level
    end
end



function stats.onNPCKill(EventObj, killedNPC, killReason) -- This raids xpDrops and dispenses XP for the NPC you just murdered, as long as you have declared it.
    if xpDrops[killedNPC.id] ~= nil then
        GainXP(xpDrops[killedNPC.id])
    end
end

return stats -- and STAT'S all, folks! Trolololololololololol.