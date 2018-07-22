local Renderer = require "renderer"
local GameLoop = require "game_loop"

renderer = Renderer:create()
gameLoop = GameLoop:create() 

WIDTH     = love.graphics.getWidth()
HEIGHT    = love.graphics.getHeight()
GAME_TIME = 0


function createBox(x, y)
	local b = {} 

	b.x = x or 0
	b.y = y or 0

	function b:load()
		renderer:add(self, 1)
		gameLoop:add(self)
	end

	function b:draw()
		love.graphics.setColor(math.random(0,1), math.random(0,1), math.random(0,1))
		love.graphics.rectangle("fill", self.x, self.y, 64, 64)
	end

	function b:tick(dt)
		print(dt, math.random())
	end

	return b
end

function love.load()
	r1 = createBox(64,64)
	r2 = createBox(96,96)
	r1:load()
	r2:load()
end

function love.update(dt)
	GAME_TIME = GAME_TIME + dt
	gameLoop:update(dt)
end

function love.draw()
	renderer:draw()
end 
