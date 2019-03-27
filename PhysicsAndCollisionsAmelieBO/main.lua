-- Title: PhysicsAndCollision
-- Name: Amelie Bender-Olivas
-- Course: ICS2O
-- This program makes balls bounce around the screan with a beam.
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
beam.width = display.contentWidth/2
beam.height = display.contentHeight/10

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
beam2.x = display.contentCenterX/0.589
beam2.y = display.contentCenterY*1.65

-- set the beam width and height
beam2.width = display.contentWidth/2
beam2.height = display.contentHeight/10

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
	-- create the second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	ball2:scale(0.5, 0.5)

	-- adding to physics
	physics.addBody(ball2, {density=3.0, friction=0.8, bounce=0.5, radius=12.5})
end

-----------------------------------------------------------------------------

local function thirdball()
	-- create the third ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	ball3:scale(2, 2)

	-- adding to physics
	physics.addBody(ball3, {density=1.2, friction=0.6, bounce=0.2, radius=50})
end
------------------------------------------------------------------------------

local function fourthball()
	-- create the third ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	ball4:scale(2.5, 2.5)

	-- adding to physics
	physics.addBody(ball4, {density=2.0, friction=0.7, bounce=0.8, radius=100})
end


-------------------------------------------------------
-- TIMER DELAYS  - call each function after the given millisecond
-----------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondball)
timer.performWithDelay( 600, thirdball)
timer.performWithDelay( 700, fourthball)