
function love.load()
    tileset = love.graphics.newImage("assets/countryside.png")

    local tileW, tileH = 32,32
    local tilesetWidth, tilesetHeight = tileset:getWidth(), tileset:getHeight()

    grassQuad = love.graphics.newQuad(0,0,tileW,tileH,tilesetWidth,tilesetHeight)
    oxQuad = love.graphics.newQuad(32,0,tileW,tileH,tilesetWidth,tilesetHeight)
end

function love.draw()
    love.graphics.print("Hello World!",100,100)


    love.graphics.draw(tileset,grassQuad,0,0)
    love.graphics.draw(tileset,grassQuad,32,0)
    love.graphics.draw(tileset,grassQuad,64,0)
    love.graphics.draw(tileset,grassQuad,0,32)
    love.graphics.draw(tileset,oxQuad,32,32)
    love.graphics.draw(tileset,grassQuad,64,32)
end

function love.update(dt)
    
end