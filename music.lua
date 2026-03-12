--IMPORT MUSIC HERE
function LoadSound()
    sound = love.audio.newSource("sfx.ogg","static")
    music = love.audio.newSource("sfx.ogg","stream")

end

--add music:play()/ music:pause()/ music:stop() logic here
function music()
    music:play()

end

--add sfx:play()/ sfx:pause()/ sfx:stop() logic here
function sfx()
    sfx:play()
end