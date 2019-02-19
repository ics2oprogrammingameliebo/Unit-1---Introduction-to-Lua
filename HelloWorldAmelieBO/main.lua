-- Title: HelloWorld
-- Name: Amelie BO
-- Course: ICS2O/3C
-- This program displays Hello to the simulator and to the command terminal.
-- terminal.
----------------------------------------------------------------------------------

-- print "Hello, World" to the command terminal
print ("***Hello Amelie")

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background color
display.setDefault("background", 204/255, 255/255, 229/255)

--create a local variable
local textObject

--create a local variable
local textObject

--displays text on the screen at position x = 400 and y = 350 with
--a deafult font style and font size of 100
textObject = display.newText( "Hello, Amelie!", 400, 350, nil, 100 )

--sets color of text
textObject:setTextColor(153/255, 0/255, 76/255)

--displays text on the screen at position x = 400 and y = 500 with
--a deafult font style and font size of 100
textObject = display.newText( "By: Amelie", 400, 500, nil, 100 )

--sets color of text
textObject:setTextColor(0/255, 0/255, 0/255)
