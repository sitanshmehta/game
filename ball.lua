wf = require("libraries/windfield")
require("player")

window_Height = 600
window_Width = 800
radius = 10

local world = wf.newWorld(0, 500)


Ball = {}
function Ball:load()
    self.x = window_Width / 2
    self.y = window_Height / 2
    self.speed = 200
    self.xVel = self.speed
    self.yVel = self.speed
    rand_num = love.math.random(200, -200)
end

function Ball:draw()
    love.graphics.circle("fill", self.x, self.y, radius)
end

function Ball:update(dt)
    Ball:move(dt)
    Ball:wallBounce()
    collide(self, player1)
    collide(self, player2)
end

--ADDITIONAL FUNCTIONS --

function Ball:move(dt)
    self.x = self.x + self.xVel * dt 
    self.y = self.y + self.yVel * dt 
end

function Ball:wallBounce()
    if self.y < 0 then
        self.y = 0
        self.yVel = -self.yVel
    elseif self.y + (radius * 2) > window_Height then
        self.y = window_Height - (radius * 2)
        self.yVel = -self.yVel
    end

    if self.x + (radius * 2) > window_Width then
        self.x = window_Width - (radius * 2)
        self.xVel = - self.xVel
    elseif self.x < 0 then
        self.x = 0
        self.xVel = - self.xVel
    end

end

function Ball:bounce()

end

