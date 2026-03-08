
function love.load()
    tileset = love.graphics.newImage("assets/countryside.png")

    tileW, tileH = 32,32
    local tilesetWidth, tilesetHeight = tileset:getWidth(), tileset:getHeight()

    QuadInfo = {
        {0,0},
        {32,0},
        {0,32},
        {32,32}
    } 

    Quad = {}

    for i, info in ipairs(QuadInfo) do
        Quad[i] = love.graphics.newQuad(info[1],info[2],tileW,tileH,tilesetWidth,tilesetHeight)
    end

    TileTable={
        {2,2,2,2,2,2,2,2,2,2},
        {1,2,1},
        {1,3,1},
        {1,1,1},
        {1,1,1},
        {2,2,2}
    }
end

Player = {
    x = 64,
    y = 32 
}

function love.draw()


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

    love.graphics.draw(tileset,Quad[2],Player.x,Player.y)
end




function love.keypressed(k)

    function love.keypressed(key)

        tileX = math.floor(Player.x/tileW)+1
        tileY = math.floor(Player.y/tileH)+1

        if key == 'd' and TileTable[tileY][tileX+1]~=2 then
            Player.x = Player.x + 32
        end

        if key == 'a' and TileTable[tileY][tileX-1]~=2 then
            Player.x = Player.x - 32
        end

        if key == 'w' and TileTable[tileY-1][tileX]~=2 then
            Player.y = Player.y - 32
        end

        if key == 's' and TileTable[tileY+1][tileX]~=2 then
            Player.y = Player.y + 32
        end
        
    end
end
