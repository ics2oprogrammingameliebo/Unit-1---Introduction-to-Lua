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
 local incorrectObject
 local NumericTextFields
 local randomNumber1
 local randomNumber2
 local userAnswer
 local correctAnswer
 local incorrectAnswer

 ----------------------------------------------------------------------
 -- LOCAL FUNCTIONS
 ----------------------------------------------------------------------

 local function AskQuestion()
 	-- generate 2 random numbers between max. and a min. number
 	randomNumber1 = math.random(0, 10)
 	randomNumber2 = math.random(0, 10)

 	correctAnswer = randomNumber1 + randomNumber2

 	-- create question in text object
 	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

 end

 local function HideCorrect()
 	correctObject.isVisible = false
 	AskQuestion()
 end

 local function NumericFieldListener( event )

 	-- User begins editing "numericField"
 	if ( event.phase == "began ") then

 		-- clear text field
 		event.target.text = " "

<<<<<<< HEAD
 	elseif ( event.phase == "submitted" ) then
=======
 	elseif event.phase == "submitteb" then
>>>>>>> d741f93b9ae338afebdfe648806d3ccdac5a14ac

 		-- when the answer is submitted (enter key is pressed) set user input to user's answer
 		userAnswer = tonumber(event.target.text)

 		-- if the users answer and the correct answer are the same:
 		if (userAnswer == correctAnswer) then
 			correctObject.isVisible = true
 			timer.performWithDelay(2000, HiddenCorrect)
 		end
 	end
 end
<<<<<<< HEAD
=======

>>>>>>> d741f93b9ae338afebdfe648806d3ccdac5a14ac
 --------------------------------------------------------------------------
 -- OBJECT CREATION
 --------------------------------------------------------------------------

 -- display a question and set the color
<<<<<<< HEAD
 questionObject = display.newText ( " ", display.contentWidth/3.5, display.contentHeight/2, nil, 60 )
=======
 questionObject = display.newText ( " ", display.contentWidth/3, display.contentHeight/2, nil, 60 )
>>>>>>> d741f93b9ae338afebdfe648806d3ccdac5a14ac
questionObject:setTextColor(51/255, 0/255, 102/255)

-- create the correct text object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 60 )
correctObject:setTextColor(51/255, 0/255, 102/255)
correctObject.isVisible = false

-- Create numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 250,80 )
numericField.inputType = "number"

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )
<<<<<<< HEAD
=======

>>>>>>> d741f93b9ae338afebdfe648806d3ccdac5a14ac
------------------------------------------------------------------------
-- FUNCTION CALLS
-----------------------------------------------------------------------

-- call the function to ask the question
<<<<<<< HEAD
AskQuestion()
=======
AskQuestion()
















>>>>>>> d741f93b9ae338afebdfe648806d3ccdac5a14ac
