function love.load()

	game = {}
	game.scene = nil

	--test
	game.scene = require 'test scene'

	menu = require 'contributor.sanjiv.list menu'


	love.graphics.setBackgroundColor(200,200,255)
	
end

function love.update(dt)

	if game.scene == nil then
	
	elseif game.scene.update then
		game.scene.update(dt)
	end

end

function love.draw()

	if game.scene == nil  then
	
	elseif game.scene.draw then
		game.scene.draw()
	end
	
	menu.draw()

end

function love.mousepressed(mx,my,button)


	if game.scene == nil  then
	
	elseif game.scene.mousepressed then
		game.scene.mousepressed(mx,my,button)
	end

	menu.mousepressed(mx,my,button)
	
end

function love.mousereleased(mx,my,button)

	if game.scene == nil  then
	
	elseif game.scene.mousereleased then
		game.scene.mousereleased(mx,my,button)
	end

end

function love.keypressed(key)

	if game.scene == nil  then
	
	elseif game.scene.keypressed then
		game.scene.keypressed(key)
	end

	menu.keypressed(key)
end

function love.keyreleased(key)

	if game.scene == nil  then
	
	elseif game.scene.keyreleased then
		game.scene.keyreleased(key)
	end

end

function love.focus(f)

	if not f then
		--lost focus
	else
		--focus
	end
	
	

end

function love.quit()

end
----/