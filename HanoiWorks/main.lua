-- 
-- Abstract: The hanoi game platform for the tutoring class
--
-- Copyright (C) 2011 Reflexive Rabbit
--
-- based on DragPlatforms sample project
-- 
-- Sample code is MIT licensed, see http://developer.anscamobile.com/code/license
-- Copyright (C) 2010 ANSCA Inc. All Rights Reserved.

local physics = require("physics")
local hanoiDrag = require("hanoiDrag")

local function setup()
	physics.start()

	display.setStatusBar( display.HiddenStatusBar )

	local background = display.newImage( "bkg_bricks.png", true )
	background.x = display.contentWidth / 2
	background.y = display.contentHeight / 2

	local ground = display.newImage( "floor.png" )
	ground.x = 240; ground.y = 320
	physics.addBody( ground, "static", { friction=0.6 } )

	local sticks = {}
	sticks[1] = display.newImage( "stick.png" )
	sticks[1].x = 80; sticks[1].y = 142
	physics.addBody( sticks[1], "static", { isSensor = true  } )
	sticks[2] = display.newImage( "stick.png" )
	sticks[2].x = 240; sticks[2].y = 142
	physics.addBody( sticks[2], "static", { isSensor = true  } )
	sticks[3] = display.newImage( "stick.png" )
	sticks[3].x = 400; sticks[3].y = 142
	physics.addBody( sticks[3], "static", { friction=0.6 } )

	local plate = display.newImage( "plate.png" )
	plate.x = 80; plate.y = 200
	physics.addBody( plate, { density=1.0, bounce=0.2 } )
	plate.isFixedRotation = true 

	-- Add touch event listeners to objects
	plate:addEventListener( "touch", hanoiDrag.startDrag )
end

setup()


