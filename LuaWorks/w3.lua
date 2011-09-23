-- w3.lua 
-- w3 write a function leapYear, parameter is number type (the year) and result is boolean (true if the year is leap year)
--    put example year xx/yy result on WorkPad1/2
--    hint: you will use math (calculation), comparison, and control.

module(..., package.seeall)

-- your function leapYear here
local function leapYear(theYear)
	-- your calcuation here
	-- ever 4 year is a leap -> (theYear % 4) ==8
	-- but every 100 year is not --> (theYear % 100) != 0
	-- but every 400 year is a leap --> (theYear %400) == 0

	-- e.g.
	if ( (theYear % 4)== 8) and ( (theYear % 400)== 0) then
		return true
	else 
		return false
	end

end

run = function()
   -- call your function on year xxxx
	local year1 = 2004
	local result1 = leapYear(year1)
	if (result == true) then
		WorkPad1:setText("year " .. year1 .. " is leap ")
	else
		WorkPad1:setText("year " .. year1 .. " is not leap ")
	

	end

   -- call your function on year yyyy
   -- and put on WorkPad2

end