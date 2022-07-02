window_Height = 600
window_Width = 800
speed = 500
width = 80
height = 20
player1 = {}
player2 = {}

Player = {}
function Player:load()
    player1.x = 0
    player1.y = window_Height - height
    player1.speed = 200

    player2.x = window_Width - width
    player2.y = window_Height - height
    player2.speed = 200

end

function Player:draw()
    love.graphics.rectangle("fill", player1.x, player1.y, width, height) --player1
    love.graphics.rectangle("fill", player2.x, player2.y, width, height) --player2
end

function Player:update(dt)
    Player:move(dt)
    Player:checkBoundaries()
end
 

-- ADDITIONAL FUNCTIONS --
function Player:move(dt)
    if love.keyboard.isDown("a") then
        player1.x = player1.x- player1.speed *dt 
    elseif love.keyboard.isDown("d") then
        player1.x = player1.x + player1.speed *dt
    end

    if love.keyboard.isDown("left") then
        player2.x = player2.x- player2.speed *dt 
    elseif love.keyboard.isDown("right") then
        player2.x = player2.x + player2.speed *dt
    end
end

function Player:checkBoundaries()
    if player1.x < 0 then
        player1.x = 0
    elseif (player1.x + width) > (window_Width / 2) then
        player1.x = (window_Width / 2) - width
    end

    if player2.x < (window_Width / 2) then
        player2.x = (window_Width / 2)
    elseif (player2.x + width) > (window_Width) then
        player2.x = (window_Width) - width
    end
end