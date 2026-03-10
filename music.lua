
function LoadSound()
    sound = love.audio.newSource("sfx.ogg","static")
    music = love.audio.newSource("sfx.ogg","stream")

end

function music()
    music:play()

end

function sfx()
    sfx:play()
end