-- Title: WhackAMole
-- Name: Amelie BO
-- Course: ICS2O/3C
-- This program places a random object on the screen. If the user clicks on it i n time,
-- the score increases by 1.

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