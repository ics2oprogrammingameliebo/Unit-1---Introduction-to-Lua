-- Title: PhysicsAndCollision
-- Name: Amelie Bender-Olivas
-- Course: ICS2O
-- This program...
-------------------------------------------------------- 
-- hide stust bar
display.setStatusBar(display.HiddenStatusBar)

-- local physics
local physics = require("physics")

-- start physics
physics.start()
----------------------------------------------------------
-- Objects
---------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)
ground.x = display.contentWidth/2
ground.y = display.contentHeight/1.04

-- Change the width to be the same as the sceen
ground.width = display.contentWidth

-- Add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

----------------------------------------------------------------
-- display the image
local beam = display.newImage("Images/beam.png", 0, 0)

-- set the x and y positions 
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

-- set the beam width and height
beam.x = display.contentWidth/2
beam.y = display.contentHeight/10

-- rotate the beam 45 degrees so its on an angle
beam:rotate(45)

-- send it to the back layer
beam:toBack()

-- add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})
--------------------------------------------------------------
-- display the second beam image
local beam2 = display.newImage("Images/beam.png", 0, 0)

-- set the x and y positions 
beam2.x = display.contentCenterX/5
beam2.y = display.contentCenterY*1.65

-- set the beam width and height
beam2.x = display.contentWidth/3
beam2.y = display.contentHeight/10

-- rotate the beam -45 degrees so its on an angle
beam2:rotate(-45)

-- send it to the back layer
beam2:toBack()

-- add to physics
physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})
----------------------------------------------------------------
-- create background
local bkg = display.newImage("Images/bkg.png", 0, 0)

-- set the x and y position
bkg.x = display.contentCenterX
bkg.y = display.contentCenterY

-- set the width and height of bkg
bkg.width = display.contentWidth
bkg.height = display.contentHeight

-- send to back
bkg:toBack()
-----------------------------------------------------------------------
-- FUNCTIONS
---------------------------------------------------------------------

-- creat the first ball
local function firstBall()
	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0 ,0)

	-- add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

--------------------------------------------------------------------------------

local function secondball()
	-- create the first ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball2, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})
end

-------------------------------------------------------
-- TIMER DELAYS  - call each function after the given millisecond
-----------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondball)