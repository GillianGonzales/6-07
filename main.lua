-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonales
-- Created On April 07 2018
-- 
-- This program will have the user guess my age 
-----------------------------------------------------------------------------------------

-- Making varaibles
local age
local guess

-- Change background colour
display.setDefault( "background", 1, 1, 1 )

-- Adding text 
local ageInstructions = display.newText("Guess my age", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
ageInstructions:setFillColor( 0, 0, 0 )
ageInstructions.id = "Asking what my age is"

local ageAnswer = display.newText("", display.contentCenterX, display.contentCenterY + 400, native.systemFont, 75)
ageAnswer:setFillColor( 0, 0, 0 )
ageAnswer.id = "My age"

-- Adding TexField 
local ageGuess = native.newTextField( display.contentCenterX, display.contentCenterY, 450, 125 )
ageGuess.id = "Users Guess"

-- Adding Button
local Button = display.newImageRect("./Assets/sprites/Button.png", 406, 157 )
Button.x = display.contentCenterX
Button.y = display.contentCenterY+ 200
Button.id = "Button"


-- Making Function
local function TellAnswser( event )
	-- This funtion will tell if you got my age right
	age = 15
	guess = tonumber(ageGuess.text)

	if guess == age then
		ageAnswer.text = "You got my age right"
		elseif guess > age then 
		ageAnswer.text = "Go lower"
		elseif guess < age then 
		ageAnswer.text = "Go higher"
		else 
		ageAnswer.text = "Invaild Answer"
	end

end

Button:addEventListener("touch", TellAnswser)
