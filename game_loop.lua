local GameLoop = {} 

function GameLoop:create()
	local gameLoop = {}

	gameLoop.tickers = {}

	function gameLoop:add(obj) 
		table.insert(self.tickers, obj)
	end

	function gameLoop:update(dt)
		for i = 0, #self.tickers do 
			local obj = self.tickers[i]
			if obj ~= nil then
				obj:tick(dt)
			end 
		end 
	end

	return gameLoop
end

return GameLoop 