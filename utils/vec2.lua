local Vec2 = {}

function Vec2:new(x,y)
	local vec2 = {} 

	vec2.x = x or 0
	vec2.y = y or 0

	function vec2:move(dx, dy, dt)
		local delta = dt or 1
		self.x = self.x + dx * delta
		self.y = self.y + dy * delta
	end

	return vec2
end

return Vec2