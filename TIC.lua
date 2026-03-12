
-- THIS IS WHERE YOU WRITE CODE.
-- MODIFY THE MAP WITH map.lua.
-- MODIFY THE MUSIC & SFX WITH music.lua
-- YOU COULD STILL USE REGULAR LOVE2D CODE


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
    ellib(200,300,100,20,3,255,255,255,255)

    spr(sheet,true,Player.x,Player.y,0+math.floor(time()/4%60/30),0,1,1,1,1,2,0,0,8,8)


end

function TIC()
    local mx,my,ml,mm,mr = mouse()
    text = mx


    ---player code for map
    tileX = math.floor(Player.x/tileW)+1
    tileY = math.floor(Player.y/tileH)+1



    if key('d',0.01) and mget(tileX+1,tileY)~=2 then
        Player.x = Player.x + 32
    end

    if keyp('a') and mget(tileX-1,tileY)~=2 then
        Player.x = Player.x - 32
    end

    if keyp('w') and mget(tileX,tileY-1)~=2 then
        Player.y = Player.y - 32 
    end

    if keyp('s') and mget(tileX,tileY+1)~=2 then
        Player.y = Player.y + 32
    end

end