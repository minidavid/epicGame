function mset(x,y,value)
    if mapTable[y] then
        mapTable[y][x] = value
    end
end