require("primitives2D")
require("TIC80Timer")


require("TIC80Print")

function BOOT()

end

--t 

function TICDraw()

    circb(10,10,100+math.sin(time()),255,255,255,255)
    pix(10,100,255,255,255,255)
    rectb(10,10,100,100,255,255,255,255)
    trib(500,300,400,400,300,100,255,255,255,255)
    Print("Okay stuff")
    
end


function TIC()

end