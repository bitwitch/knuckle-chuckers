local Renderer = {} 
local num_layers = 5

function Renderer:create()
	local renderer = {}

	renderer.drawers = {}
	for i = 0, num_layers do 
		renderer.drawers[i] = {}
	end 

	function renderer:add(obj, layer) 
		local l = layer or 0 
		table.insert(self.drawers[l], obj)
	end

	function renderer:draw()
		for layer = 0, #self.drawers do 
			for draw = 0, num_layers do

				local obj = self.drawers[layer][draw] 

				if (obj ~= nil) then 
					obj:draw() 
				end
				
			end 
		end 
	end

	return renderer
end

return Renderer 