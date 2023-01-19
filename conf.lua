function love.conf(t)
	t.title = "Telepropmter"
	t.identity = "Telepropmter"
	t.version = "11.3"
	t.console = false
	t.window.width = 800
	t.window.height = 350
	t.window.msaa = 8
	t.modules.joystick = false
	t.modules.physics = false
	t.externalstorage = true
	t.window.vsync = 0
	t.window.resizable = false
end