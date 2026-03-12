
function LoadSpr()
    sheet = love.graphics.newImage("assets/pixilart.png")
end



posx1 = 0

function spr(image,alias,x,y,posx,posy,color1,color2,color3,alpha,scale,flip,rotate,w,h)

    love.graphics.push()

    aliasSet = alias or true

    if alias then
        image:setFilter("nearest","nearest")
    end

    scale,flip,rotate = scale or 1, flip or false, rotate or 0
    --fix this to work:
    width, height = w or 8, h or 8

    sx, sy = scale, scale
    if flip then sx = -scale end

    local ox, oy = width/2, height/2
    
    --modify animation
    -- local function animation()
    --     if posx1 < 24 then
    --         --if math.floor((love.timer.getTime()*4)%2)==0 then 
    --             posx1 = posx1 + width
    --         --end
    --     else
    --         posx1 = 0
    --     end
    -- end

    --animation()

    
    
    local quad = love.graphics.newQuad(posx + posx1, posy + posy, width, height, image:getWidth(), image:getHeight())

    color1,color2,color3,alpha = color1 or 1, color2 or 1, color3 or 1, alpha or 1
   
    love.graphics.setColor(color1, color2, color3, alpha)
    love.graphics.draw(image, quad, x, y, rotate, sx, sy, ox, oy)

    love.graphics.pop()
end
