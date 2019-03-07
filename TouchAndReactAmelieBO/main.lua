-- Title: TouchAndReact
-- Name: Amelie Bender-Olivas
-- Course: ICS2O/3C
-- This program  displays a blue button. When I click on it it changes
-- to a red button and the word "Clicked" appears as well as an image
-- and a sound effect. When I release the mouse it returns to the original screen.

-- set background color
display.setDefault ("background", 229/255, 204/255, 255/255)

-- hide staus bar
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create penguin, set its position and make it invisible
local penguin = display.newImageRect("Images/penguin.png", 200, 200)
penguin.x = display.contentWidth/2
penguin.y = display.contentHeight/1.3
penguin.isVisible = false

-- create text object, set its position and make it invisible
local textObject = display.newText("Clicked!", 0, 0, nil, 60)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (0/255, 0/255, 255/255)
textObject.isVisible = false

local CorrectSound = audio.play( "Correct Answer Sound Effect.mp3" )

-- Function BlueButtonListener
-- Input: touch listener
-- Output: none
-- Description: when clue button is clicked, it will make the text appear with
-- the red button and make the blue button disappear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		penguin.isVisible = true
		CorrectSound = true
	end

	if (touch.phase == "ended") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
		penguin.isVisible = false
		CorrectSound = false
	end
end

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)
--------------------------------------------------
-- Function RedButtonListener
-- Input: touch listener
-- Output: none
-- Description: when clue button is clicked, it will make the text appear with
-- the blue button and make the red button disappear
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = true
		penguin.isVisible = true
		CorrectSound = true
	end

	if (touch.phase == "ended") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = false
		penguin.isVisible = false
		CorrectSound = false
	end
end

-- add the respective listeners to each object
redButton:addEventListener("touch", RedButtonListener)