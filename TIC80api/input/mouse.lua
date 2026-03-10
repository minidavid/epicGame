
--mouse x, y, left click, middle click, right click, scroll x, scroll y

function mouse()

    local x,y = love.mouse.getPosition()
    local left = love.mouse.isDown(1)
    local right = love.mouse.isDown(2)
    local middle = love.mouse.isDown(3)

    return x,y,left,middle,right
    
end