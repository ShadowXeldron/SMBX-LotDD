--------------------------------------------------
-- Level code
-- Created 9:59 2020-10-28
--------------------------------------------------
SaveData[Level.filename()] = SaveData[Level.filename()] or {}
local LevelSD = SaveData[Level.filename()]

-- Run code on level start
function onStart()
    --Your code here
end

-- Run code every frame (~1/65 second)
-- (code will be executed before game logic will be processed)
function onTick()
    --Your code here
end

-- Run code when internal event of the SMBX Engine has been triggered
-- eventName - name of triggered event
function onEvent(eventName)
    if eventName == "Toad Quest"
        if LevelSD.motorQuest = false then
        Text.showMessageBox("...or I WOULD, if the Wario Bros. didn't steal my steering wheel! Unless that you can somehow get another one, I'll be stuck here. FOREVER!")
        
end

