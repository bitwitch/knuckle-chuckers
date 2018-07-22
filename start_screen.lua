local freshman = love.graphics.newFont("assets/fonts/freshman.ttf", 50)

local StartScreen = {
	title = love.graphics.newText(freshman, "KNUCKLE CHUCKERS"),
	chuck = love.graphics.newImage("assets/chuck.png"),
	lenard = love.graphics.newImage("assets/lenard.png")
}

function StartScreen:draw()
	love.graphics.setColor(0,0,0)
	love.graphics.draw(self.title, love.graphics.getWidth()/2 - self.title:getWidth()/2, 100)

	love.graphics.setColor(1,1,1)
	love.graphics.draw(self.lenard, 200, 200, 0, 4, 4)
	love.graphics.draw(self.chuck, 400, 200, 0, -4, 4)
end

return StartScreen

