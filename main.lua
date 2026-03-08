
require("input/key")
require("TIC")
require("TIC80Timer")

require("primitives2D")


--load
function love.load()
    tileset = love.graphics.newImage("assets/countryside.png")

    tileW, tileH = 32,32
    tilesetWidth, tilesetHeight = tileset:getWidth(), tileset:getHeight()

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
        {2,2,1},
        {2,3,1},
        {2,1,1},
        {2,1,1},
        {2,2,2,2,2,2,2,2,2,2}
    }


end

--draw
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
    
    TICDraw()

end

--update
function love.update(dt)

        tileX = math.floor(Player.x/tileW)+1
        tileY = math.floor(Player.y/tileH)+1



        if key('d',0.01) and mget(tileX+1,tileY)~=2 then
            Player.x = Player.x + 32
            
        end

        if keyp('a') and mget(tileX-1,tileY)~=2 then
            Player.x = Player.x - 32
        end

        if keyp('w') and mget(tileX,tileY-1)~=2 then
            Player.y = Player.y - 32
        end

        if keyp('s') and mget(tileX,tileY+1)~=2 then
            Player.y = Player.y + 32
        end
    
        updateTime(dt) -- to emulate time() source is TIC80Timer.lua
        TIC()
end



function love.keypressed(k,scancode,isRepeat)

    function love.keypressed(keys)



        
    end
end

function mset(x,y,value)
    if TileTable[y] then
        TileTable[y][x] = value
    end
end

function mget(x,y,value)
    if TileTable[y] then
        return TileTable[y][x]
    end
end
