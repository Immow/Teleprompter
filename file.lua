local file = {}

function file.fileCheck()
	if not love.filesystem.getInfo("test.txt") then
		love.filesystem.write("test.txt", "")
	end
end

-- file:fileCheck()

-- function file.writeData(data)
-- 	love.filesystem.write("test.txt", data)
-- end

function file.returnData()
	local data = love.filesystem.read("gedicht.txt")
	return data
end

return file