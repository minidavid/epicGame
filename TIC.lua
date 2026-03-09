
function BOOT()
    Player = {
        x = 64,
        y = 32 
    }
end

BOOT()


    


text = "Art"
function TICDraw()

    circb(10,10,100+math.sin(time()),255,255,255,255)
    pix(10,100,255,255,255,255)
    rectb(10,10,100,100,255,255,255,255)
    trib(500,300,400,400,300,100,255,255,255,255)
    Print(text)
    circ(100,100,10,255,255,255,255)


    
end


function TIC()
    local mx,my,ml,mm,mr = mouse()
    text = mx
end