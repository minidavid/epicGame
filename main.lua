
---IMPORT STUFF
require("input/key")
require("primitives2D")
require("TIC80Timer")

require("TIC80Print")
require("mouse")
require("mget")
require("mset")
require("map")

require("TIC")



--load
function love.load()




    Map()

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
    for rowIndex = 1,#mapTable do

        local row = mapTable[rowIndex]

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