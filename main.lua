
---IMPORT STUFF
require("TIC80api/input/key")
require("TIC80api/input/mouse")

require("TIC80api/primitives/primitives2D")
require("TIC80api/TIC80Timer")

require("TIC80api/map/mget")
require("TIC80api/map/mset")

require("TIC80api/output/TIC80Print")

require("map")

require("TIC")



-- LOAD --
function love.load()

    Map()

end


-- DRAW --

function love.draw()

    --draw map
    DrawMap()

    love.graphics.draw(tileset,Quad[2],Player.x,Player.y)
    
    --main draw
    TICDraw()

end

-- UPDATE --
function love.update(dt)
    
        updateTime(dt) -- to emulate time() source is TIC80Timer.lua
        TIC()
end




----------------------
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
-----------------------




---- IF Additional keyp logic required... ----
function love.keypressed(k,scancode,isRepeat)

    function love.keypressed(keys)
        
        
    end

end