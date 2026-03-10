

--- pixel
function pix(x,y,color1,color2,color3,alpha)
    
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.points(x,y)
    love.graphics.pop()
end

------- rect ----
function rect(x,y,width,height,color1,color2,color3,alpha)

    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.rectangle("fill",x,y,width,height)
    love.graphics.pop()
end

function rectb(x,y,width,height,color1,color2,color3,alpha)
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.rectangle("line",x,y,width,height)
    love.graphics.pop()
end


------- circle -------------
function circ(x,y,radius,color1,color2,color3,alpha)
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.circle("fill",x,y,radius)
    love.graphics.pop()
end

function circb(x,y,radius,color1,color2,color3,alpha)
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.circle("line",x,y,radius)
    love.graphics.pop()
end

-- elli

function elli(x,y,radiusx,radiusy,segments,color1,color2,color3,alpha)
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.ellipse("fill",x,y,radiusx,radiusy,segments)
    love.graphics.pop()
end

function ellib(x,y,radiusx,radiusy,segments,color1,color2,color3,alpha)
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.ellipse("line",x,y,radiusx,radiusy,segments)
    love.graphics.pop()
end

---line
function line(x1,y1,x2,y2,color1,color2,color3,alpha)
    love.graphics.push()
    
    love.graphics.setColor(color1,color2,color3,alpha)
    love.graphics.line(x1,y1,x2,y2)

    love.graphics.pop()
end

--triangle
function trib(x1,y1,x2,y2,x3,y3,color1,color2,color3,alpha)
    love.graphics.push()

    love.graphics.setColor(color1,color2,color3,alpha)

    love.graphics.line(x1,y1,x2,y2,x3,y3,x1,y1)
    love.graphics.pop()
end

