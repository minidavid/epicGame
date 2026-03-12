
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

    cls(1,0,0,1)
    circb(10,10,100+math.sin(time()),1,1,1,1)
    pix(10,100,1,1,1,1)
    rectb(10,10,100,100,1,1,1,1)
    trib(500,300,400,400,300,100,1,1,1,1)
    Print(text)
    circ(100,100,10,1,1,1,1)
    ellib(200,300,100,20,3,1,1,1,1)

    spr(sheet,true,0+8*math.floor(time()/4%60/24),0,Player.x,Player.y,1,1,1,1,2,0,0,8,8)

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