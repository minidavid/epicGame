

function Print(str,x,y,rad,sx,sy,color1,color2,color3,alpha)

    if not x then
        x = 0
    end

    if not y then
        y = 0
    end

    if not rad then
        rad = 0
    end

    if not sx then
        sx = 1
    end

    if not sy then
        sy = 1
    end

    if not color1 then
        color1 = 1
    end

    if not color2 then
        color2 = 1
    end

    if not color3 then
        color3 = 1
    end

    if not alpha then
        alpha = 1
    end

    love.graphics.push()
    
    love.graphics.setColor(color1,color2,color3,alpha)

    love.graphics.print(tostring(str),x,y,rad,sx,sy)

    love.graphics.pop()
end