function love.load()
	-- body
	width = 20
	scale = 20
	height = 20
	boxes = {}


	for i=1,10 do
		-- make 10 boxes
		foundlocation = true
		while foundlocation  do
			x = math.random(20)
			y = math.random(20)

			if #boxes > 0 then
				for _, v in pairs(boxes) do
					if x ~= v.x and y ~= v.y then
						foundlocation = false
						box = {}
						box.x = x
						box.y = y
						table.insert(boxes, box)
					end
				end
			end
		end
	end
end

function love.update(dt)
	-- body
end


function love.draw()
	love.graphics.rectangle(fill, 20,20,20,20)
	if	#boxes > 0 then
		for _, v in pairs(boxes) do
			love.graphics.rectangle("fill", v.x * 20, v.y * 20, 20, 20)
		end
	end
	-- body
end