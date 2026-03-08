
function love.load()
    tileset = love.graphics.newImage("assets/countryside.png")

    tileW, tileH = 32,32
    local tilesetWidth, tilesetHeight = tileset:getWidth(), tileset:getHeight()

    Quad = {
        love.graphics.newQuad(0,0,tileW,tileH,tilesetWidth,tilesetHeight),
        love.graphics.newQuad(32,0,tileW,tileH,tilesetWidth,tilesetHeight),
        love.graphics.newQuad(0,32,tileW,tileH,tilesetWidth,tilesetHeight),
        love.graphics.newQuad(32,32,tileW,tileH,tilesetWidth,tilesetHeight)
    }

    TileTable={
        {1,1,1},
        {1,2,1},
        {1,3,1},
        {1,1,1}
    }
end

function love.draw()
    love.graphics.print("Hello World!",100,100)


    for rowIndex = 1,#TileTable do

        local row = TileTable[rowIndex]

        for columnIndex = 1, #row do
            local num = row[columnIndex]
            if num>0 then
                local x = (columnIndex-1)*tileW
                local y = (rowIndex-1)*tileH
                love.graphics.draw(tileset,Quad[num],x,y)
            end
        end
    end
end

function love.update(dt)
    
end