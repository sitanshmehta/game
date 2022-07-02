wf = require("libraries/windfield")
require("player")
require("ball")

window_Height = 600
window_Width = 800

success = love.window.setMode(window_Width, window_Height)
world = love.physics.newWorld(0, 9.8, true)
function love.load()
    Player:load()
    Ball:load()

end

function love.draw()
    Player:draw()
    Ball:draw()
end

function love.update(dt)
    Player:update(dt) 
    Ball:update(dt)
 end

function collide (ball, player)
    if (ball.y == player.y) and (player.x <= ball.x) and (ball.x <= (player.x + width)) then
        ball.y = player.y - 1
        sound = love.audio.newSource("collide.mp3", "static")
        love.audio.play(sound)
        return true
    end
end