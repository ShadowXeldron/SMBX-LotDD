--------------------------------------------------
-- Level code
-- Created 9:50 2020-10-15
--------------------------------------------------

--Intro script. Lets-a-go.

intro = true

local cameras = Camera.get()
local handycam = require("handycam") -- For the openning scroll.
local textplus = require("textplus") -- For opening text.

local fontB = textplus.loadFont("textplus/font/6.ini")
local fontA = textplus.loadFont("textplus/font/smb3-b.ini")

-- Run code on level start
function onStart()
    Audio.playSFX("04 - Opening.mp3") -- SM64 Opening theme
end

-- Run code every frame (~1/65 second)
-- (code will be executed before game logic will be processed)

-- Textplus needs to be done in onDraw, because reasons.

function onDraw()
    textplus.print{
        x = 150,
        y = 100,
        xscale = 2,
        yscale = 2,
        font = fontB,
        text = "Dragon0307 Presents..."
    }
    textplus.print{
        x = 0,
        y = 200,
        xscale = 1.25,
        yscale = 1.25,
        font = fontA,
        color = black,
        text = "<color #19000f> <wave strength=1> THE LEGEND OF THE DARK DOOR </color>"
    }
end

-- Run code when internal event of the SMBX Engine has been triggered
-- eventName - name of triggered event
function onEvent(eventName)
    --Your code here
end

