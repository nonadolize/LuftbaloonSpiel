-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local background = display.newImageRect( "sky.jpg", display.pixelWidth, display.pixelHeight )

background.x = display.contentCenterX
background.y = display.contentCenterY


local grass = display.newImageRect( "grass.png", display.pixelWidth, 150 )

grass.x = display.contentCenterX
grass.y = display.contentHeight-30

local balloon = display.newImage( "balloon.png", display.contentCenterX, display.contentCenterY )

local physics = require ("physics")
physics.start()

physics.addBody(balloon, {bounce = .3})
physics.addBody(grass, "static")

local function push()
  balloon:applyLinearImpulse(0,-5, balloon.x, balloon.y)
end

balloon:addEventListener("tap", push)
