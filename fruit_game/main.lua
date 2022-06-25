function love.load()
    anim8 = require 'libraries/anim8' 
    tarzan = {}
    tarzan.x = 400
    tarzan.y = 200
    tarzan.image = love.graphics.newImage("/sprites/Tarzan.png")
    tarzan.spriteSheet = love.graphics.newImage('/sprites/Tarzan.png')

    tarzan.grid = anim8.newGrid(24, 36, tarzan.spriteSheet:getWidth(), tarzan.spriteSheet:getHeight())
    tarzan.animations = {}
    tarzan.animations.down = anim8.newAnimation(tarzan.grid('1-4', 1), 0.5)
end

function love.draw()
    love.graphics.draw(tarzan.image, tarzan.x, tarzan.y)
end