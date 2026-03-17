
---IMPORT STUFF
require("sprite")
require("TIC80api/input/key")
require("TIC80api/input/mouse")

require("TIC80api/primitives/primitives2D")
require("TIC80api/TIC80Timer")

require("TIC80api/map/mget")
require("TIC80api/map/mset")

require("TIC80api/cls")

require("TIC80api/output/TIC80Print")


require("map")

require("TIC")
require("scale window")



ScalerWindow() -- this function is used in scale window.lua

-- LOAD --
function love.load()

    LoadSpr()
    Map()

end


-- DRAW --

function love.draw()


    push:start() --push modifies the scaler-- you don't need to remove it.
        --draw map
    

        --main draw
        TICDraw()
    
    push:finish() --push modifies the scaler -- you don't need to remove it.

end

-- UPDATE --
function love.update(dt)

        updateTime(dt) -- to emulate time() source is TIC80Timer.lua
        TIC()

end



----------------------
function DrawMap(x,y)
    for rowIndex = 1,#mapTable do

        local row = mapTable[rowIndex]

        for columnIndex = 1, #row do
            local num = row[columnIndex]
            if num>0 then
                local posx = (columnIndex-1)*tileW
                local posy = (rowIndex-1)*tileH
                love.graphics.draw(tileset,Quad[num],posx+x,posy+y)
            end
        end
    end
end
-----------------------




---- IF Additional keyp logic required... ----
function love.keypressed(k,scancode,isRepeat)

    function love.keypressed(keys)
        
        
    end

end