

-----------------------
local keypressTime = {}

function key(key,holdDuration)
    
    if love.keyboard.isDown(key) then

        if keypressTime[key] == nil then

            keypressTime[key] = love.timer.getTime()

        else

            if (love.timer.getTime()-keypressTime[key])>=holdDuration then
                keypressTime[key] = nil
                return true
            end
            
        end
    else
        keypressTime[key] = nil
    end

    return false
end

--------------------


local keypressed = {}

function keyp(key)

    if love.keyboard.isDown(key) then

        if not keypressed[key] then
            keypressed[key] = true
            return true
        end

    else
        keypressed[key] = false
    end

    return false

end