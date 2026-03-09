
---IMPORT STUFF
require("input/key")
require("primitives2D")
require("TIC80Timer")

require("TIC80Print")
require("mouse")
require("mget")
require("mset")

require("TIC")



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

    TileTable = {
        {2,2,2,2,2,2,2,2,2,2},
        {2,2,1,1,1,1,1,1,1,2},
        {2,3,1,1,1,1,1,1,1,2},
        {2,1,1,2,1,1,1,1,1,2},
        {2,1,1,1,1,1,1,1,1,2},
        {2,2,2,2,2,2,2,2,2,2}
    }

end

--draw


function love.draw()

    --draw map
    DrawMap()

    love.graphics.draw(tileset,Quad[2],Player.x,Player.y)
    
    --main draw
    TICDraw()

end

--update
function love.update(dt)
    
        updateTime(dt) -- to emulate time() source is TIC80Timer.lua
        TIC()
end


function DrawMap()
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





---- IF Additional keyp logic required... ----
function love.keypressed(k,scancode,isRepeat)

    function love.keypressed(keys)

        
    end

end