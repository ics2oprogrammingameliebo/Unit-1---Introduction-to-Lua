-- Title: WhackAMole
-- Name: Amelie BO
-- Course: ICS2O/3C
-- This program places a random object on the screen. If the user clicks on it i n time,
-- the score increases by 1.
------------------------------------------------------------------------------
-- LOCAL VARIABLES AND OBJECT CREATION
------------------------------------------------------------------------------
-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- creating background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight)

-- set background color
display.setDefault ("background", 153/255, 204/255, 255/255)

-- setting position
bkg.anchorX = 0
bkg.anchorY = 0
bkg.x = 0
bkg.y = 0

-- get rid of white background and make it blue
bkg.isVisible = false

-- Creating Mole
local mole = display.newImage( "Images/mole.png", 0, 0 )

-- Setting Position
mole.x = display.contentCenterX
mole.y = display.contentCenterY

-- Scale the mole
mole:scale(0.4, 0.4)

-- Changing visibility to be invisible
mole.isVisible = false

local score = 0
local scoreObject
---------------------------------------------------------------------------------------
-- FUNCTIONS
--------------------------------------------------------------------------------------

-- Function that makes the mole appear in random (x, y) position on the screen
-- before calling the Hide function
function PopUp()

	-- Choosing Random Position on the screehn between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

    -- Changing visibility to be visible
	mole.isVisible = true

	-- calls PopUp function after 0.5 seconds
    timer.performWithDelay(500, Hide)
end

 -- function calls the PopUp function after 3 seconds
 function PopUpDelay()
 	timer.performWithDelay( 300, PopUp )
 end

 -- function makes the mole invisible and then calls the PopUpDelay function
 function Hide()

 	-- Changing Visibility
 	mole.isVisible = false

 	-- call PopUpDelayFunction
 	timer.performWithDelay(0, PopUpDelay)
 end

 -- function starts game
 function GameStart()
 	PopUpDelay()
 end

 -- This function increments the score only if the mole is clicked. It then 
 -- displays the new score
 function Whacked()

 	-- If touch phase just started
 	if (event.phase == "began") then

 	score = score + 1
 	
 	scoreObject.text = score .. "Score = " .. score
 	end
 end

-----------------------------------------------------------------------------------
-- OBJECT CREATION
------------------------------------------------------------------------------------
-- display the score
scoreObject = display.newText( "Score = " .. score, display.contentWidth/2.5, display.contentHeight/1.1, nil, 50)
scoreObject:setTextColor(30/255, 179/255, 0/255)
scoreObject.isVisible = true
 ---------------------------------------------------------------------------------------
 -- EVENT LISTENERS
 ----------------------------------------------------------------------------------------
 -- Add the event listener to the moles so that if the mole is touched, the Whacked function
 -- is called.
 mole:addEventListener( "touch", Whacked)

 -------------------------------------------------------------------------------------
 -- START THE GAME
 ------------------------------------------------------------------------------------
 -- call the function to start the game
 GameStart()