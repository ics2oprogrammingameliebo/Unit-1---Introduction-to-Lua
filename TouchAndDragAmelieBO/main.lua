-- Title: TouchAndDrag
-- Name: Amelie B-O
-- Course: ICS2O/3C
-- This program has 2 images on the screen. 
-- When I click and drag on each image, it moves with my finger.

-- hide the staus bar
display.setStatusBar(display.HiddenStatusBar)

-- local variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local GirlOne = display.newImageRect("Images/girl1.png", 150, 150)
local GirlOneWidth = GirlOne.width
local GirlOneHeight = GirlOne.height

local GirlTwo = display.newImageRect("Images/girl2.png", 150, 150)
local GirlTwoWidth = GirlTwo.width
local GirlTwoHeight = GirlTwo.height

local Girl = display.newImageRect("Images/girl4.png", 150, 150)
local GirlWidth = Girl.width
local GirlHeight = Girl.height

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedGirlOne = false
local alreadyTouchedGirlTwo = false
local alreadyTouchedGirl = false

-- set the initial x and y position of myImage
GirlOne.x = 400
GirlOne.y = 500

GirlTwo.x = 300
GirlTwo.y = 200

Girl.x = 600
Girl.y = 300

--Code for girl 2
-- Function: GirlTwoListener
-- Input: touch listener
-- Output: none
-- Description: when Girl two is touched, move her
local function GirlTwoListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirlOne == false) then
			alreadyTouchedGirlTwo = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirlTwo == true) ) then
		GirlTwo.x = touch.x
		GirlTwo.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedGirlTwo = false
		alreadyTouchedGirlOne = false
	end
end

-- add the respective listeners to each object
GirlTwo:addEventListener("touch", GirlTwoListener)
----------------------------------------------------------
-- code for Girl 1
local function GirlOneListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirlTwo == false) then
			alreadyTouchedGirlOne = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirlOne == true) ) then
		GirlOne.x = touch.x
		GirlOne.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedGirlOne = false
		alreadyTouchedGirlTwo = false
	end
end

-- add the respective listeners to each object
GirlOne:addEventListener("touch", GirlOneListener)
-------------------------------------------------------------
-- code for Girl
local function GirlListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirlTwo == false) then
		
			alreadyTouchedGirl = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirl == true) ) then
		Girl.x = touch.x
		Girl.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedGirl = false
		alreadyTouchedGirlTwo = false
	end
end

-- add the respective listeners to each object
Girl:addEventListener("touch", GirlListener)