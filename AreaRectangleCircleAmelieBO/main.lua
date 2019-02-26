-- Title: AreaOfRectangleAndCircle
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays a coloured rectangle with a border
-- of a different colour. It also calculates the rectangles 
-- area and displays it on the screen. The I added the code to 
-- draw a circle of a given radius that is coloured and a border 
-- of a different colour. I used the radius to calculate the area
-- and display this on the Ipad.

-- create my local variables
local areaText
local textSize = 48
local myRectangle
local widthOfRectangle = 400
local heightOfRectangle = 250
local AreaOfRectangleAndCircle

-- set the background color of my screen. Remember that colors are betwwen 0 and 1
display.setDefault("background", 204/255, 229/255, 255/255 )

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and set its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 10
myRectangle.y = 10

-- set the width of the border 
myRectangle.strokeWidth = 10

-- set the color of the rectangle 
myRectangle:setFillColor(0/255, 0/255, 153/255)

-- set the color of the border
myRectangle:setStrokeColor(255/255, 255/255, 0/255)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration  the size of the font when positioning it on the screen
areaText = display.newText ("-The area of this rectangle is width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0,0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 10
areaText.x = 10
areaText.y = display.contentHeight/2

-- set the color of the newText
areaText:setTextColor(51/255, 0/255, 102/255)

-- create local variables
local areaText
local textSize = 50
local myCircle
local radiusOfCircle = 100
local areaOfCircle

-- draw the circle that is half the width and half the length of the screen size.
myCircle = display.newCircle(0, 0, radiusOfCircle)

-- anchor the circle in the top left corner of the screen and set its (x,y) position
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 700
myCircle.y = 15

-- set width of border
myCircle.strokeWidth = 10

-- set the color of the cirlce
myCircle:setFillColor(0/255, 0/255, 255/255)

-- set the color of the border
myCircle:setStrokeColor(255/255, 0/255, 127/255)

-- calculate the area
areaOfCircle = radiusOfCircle * radiusOfCircle * 3.14

-- write the area on the screen. Take into consideration  the size of the font when positioning it on the screen
areaText = display.newText ("-The area of this circle with a radius of \n" ..
	radiusOfCircle .. " is " ..
	areaOfCircle .. " pixels².", 0,0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the color of the newText
areaText:setTextColor(51/255, 0/255, 102/255)