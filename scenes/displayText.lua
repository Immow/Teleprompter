local file = require("file")
local ww, wh = love.graphics.getDimensions()

local displayText = {}

local data = {
	text = file.returnData(),
	x = 0,
	y = wh,
	scroll = false,
	scrollSpeed = 15,
}

function displayText:mousepressed(x,y,button,istouch,presses)
	if data.scroll then
		data.scroll = false
	else
		data.scroll = true
	end
end

function displayText:mousereleased(x,y,button,istouch,presses)
	
end

function displayText:draw()
	love.graphics.printf(data.text, data.x, data.y, ww, "center")
end

function displayText:update(dt)
	if data.scroll then
		data.y = data.y - data.scrollSpeed * dt
	end
end

return displayText