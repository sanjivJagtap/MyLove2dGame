
require 'contributor.sanjiv.scroll box'

scene = {timer = 0}
---[[

function scene.update(dt)

	scene.timer = scene.timer + dt
	scrollBox:update(dt)

end
--]]

function scene.draw()

	
	local c1, c2, c3 = love.graphics.getBackgroundColor( )
	if (c1+c2+c3)/3 > (550/3) then
		love.graphics.setColor(0,0,0)
	else
		love.graphics.setColor(255,255,255)
	end

	
	--local timer = math.floor(scene.timer)
	local timer = string.format("%.2f",scene.timer)
	love.graphics.print(timer,10,10)
	
	--
	local files = love.filesystem.getDirectoryItems('project')
	
	for i,v in ipairs(files) do
	
		love.graphics.print(v,100,100+i*20)
	end
	
	love.graphics.print("Projects",100,100)
	love.graphics.print("_________",100,100)
	
	
	scrollBox:draw()
end

function scene.mousepressed(mx,my,button)
	scrollBox:mousepressed(mx,my,button)
end

function scene.mousereleased(mx,my,button)
	scrollBox:mousereleased(mx,my,button)
end

return scene