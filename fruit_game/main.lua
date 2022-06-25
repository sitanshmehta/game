function love.load()
    anim8 = require 'libraries/anim8' 
    tarzan = {}
    tarzan.x = 400
    tarzan.y = 200
    tarzan.spriteSheet = love.graphics.newImage("man.png")

    tarzan.grid = anim8.newGrid(30, 10, tarzan.spriteSheet:getWidth(), tarzan.spriteSheet:getHeight())
    tarzan.animations = {}
    tarzan.animations.down = anim8.newAnimation(tarzan.grid('1-10', 2), 0.2)
end

function love.draw()
    for i = 1, 5 do
        love.graphics.draw( tarzan.spriteSheet, 1, 150 )
      end
    -- tarzan.animations.down:draw(tarzan.spriteSheet, tarzan.x, tarzan.y, nil, 3)
end

-- function love.update(dt)
--     tarzan.animations.down:update(dt)
-- end


-- hello