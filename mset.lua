function mset(x,y,value)
    if TileTable[y] then
        TileTable[y][x] = value
    end
end