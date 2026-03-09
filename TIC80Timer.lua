
local totalTime = 0

function updateTime(dt)
    totalTime = totalTime+dt
end

function time()
    return totalTime*1000
end