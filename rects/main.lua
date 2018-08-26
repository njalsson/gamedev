-- test file 
--

io.stdout:setvbuf('no')

local Draft = require('draft')
local draft = Draft()
local Timer = require "hump.timer"

function love.load()
	-- body
	
	rectangle_controller = {}
	rectangle_controller.fire = function()
		recta = {}
		recta.x = math.random(500)
		recta.y = math.random(500)
		recta.w = math.random(100)
		recta.h = math.random(100)
		table.insert(rectangle_controller, recta)

	end
end




	-- body
function love.update( dt  )
	if love.keyboard.isDown("a") then

    	rectangle_controller.fire()
   
    end
end

function love.draw()
    -- love.graphics.setColor(0,0.4,0.4)
    -- love.graphics.rectangle("fill", 20, 20, 60, 20)
    --love.graphics.print("hello world", 400, 300)
    if #rectangle_controller > 0 then
    	for _, v in ipairs(rectangle_controller) do
    		love.graphics.rectangle("fill", v.x, v.y, v.h, v.w)
    	end
    end

    
end 



function love.keypressed(key)
end