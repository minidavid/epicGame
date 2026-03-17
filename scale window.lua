--modify this however you wish.
function ScaleWindow()
    --Scaler requires push li
    push = require("push/push")

    --vars you can modify
    gameWidth,gameHeight = 240,136
    windowWidth, windowHeight = love.window.getDesktopDimensions()
    windowWidth,windowHeight = windowWidth, windowHeight
    isFullscreen = false 
    isResizable = true

    --This is the the main function you use.
    push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {fullscreen = isFullscreen, resizable=isResizable})

end


function love.resize(w,h)
    return push:resize(w,h)
end
