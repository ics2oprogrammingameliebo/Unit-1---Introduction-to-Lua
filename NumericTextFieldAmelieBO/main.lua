-- Title: NumericTextFields
-- Name: Amelie Bender-Olivas
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in
-- a numeric texfield.
-----------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

 -- set the background color
 display.setDefault("background", 153/255, 255/255, 153/255)

 -------------------------------------------------------------------------
 -- LOCAL VARIABLES
 -------------------------------------------------------------------------

 -- create local variables
 local questionObject
 local correctObject
 local NumericTextFields
 local randomNumber1
 local randomNumber2
 local userAnswer
 local correctAnswer

 ----------------------------------------------------------------------
 -- LOCAL FUNCTIONS
 ----------------------------------------------------------------------

 local function AskQuestion()
 	-- generate 2 random numbers between max. and a min. number
 	randomNumber1 = math.random(0, 10)
 	randomNumber2 = math.random(0, 10)

 	correctAnswer = randomNumber1 + randomNumber2

 	-- create question in text object
 	questionObject.text = randomNumber1 .. " + " .. randomNumber2 "="

 end

 local function HideCorrect()
 	correctObject.isVisible = false
 	AskQuestion()
 end