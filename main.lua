function love.load()
	love.graphics.setDefaultFilter("nearest", "nearest")

	Renderer = require "renderer"
	GameLoop = require "game_loop"

	renderer = Renderer:create()
	gameLoop = GameLoop:create() 

	WIDTH     = love.graphics.getWidth()
	HEIGHT    = love.graphics.getHeight()

	StartScreen = require("start_screen")
end

function love.update(dt)
	gameLoop:update(dt)
end

function love.draw()
	love.graphics.clear(86/255, 57/255, 52/255)
	-- renderer:draw()
	StartScreen:draw()
end 
