SaveData[Level.filename()] = SaveData[Level.filename()] or {}
local LevelSD = SaveData[Level.filename()]

lhp.setHP(15, 15)
lhp.setHP(267, 10)
lhp.setHP(86, 15)
lhp.setHP(299, 20)

stats.xpDrop(15, 4)
stats.xpDrop(267, 4)
stats.xpDrop(86, 6)
stats.xpDrop(299, 5)

local function onStart()


local function onEvent(event)
    if event == "Boom Boom Music" then
        Audio.MusicChange(0, "42 - Castle Boss.ogg")
    elseif event == "Boom Boom Reset" then
        Audio.MusicChange(0, "mrpg-theme2.spc")
        
    elseif event == "Larry Music" then
        Audio.MusicChange(0, "42 - Castle Boss.ogg")    
    elseif event == "Larry Reset" then
        Audio.MusicChange(0, "mrpg-theme2.spc")
    end
end