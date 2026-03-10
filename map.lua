
function Map()

    -- Modify this to import the tileset
    tileset = love.graphics.newImage("assets/countryside.png")

    -- Modify tileW, tileH according to the size of pixel art. This is 32x32. Use 8x8 if with TIC80 code 
    tileW, tileH = 32,32
    tilesetWidth, tilesetHeight = tileset:getWidth(), tileset:getHeight()

    -- Modify QuadInfo to have specific data coordinates for the image. Like map/sprite ID
    QuadInfo = {
        {0,0}, --top left grass
        {32,0}, --top right box
        {0,32}, --bottom left grass
        {32,32} -- bottom right box
    }

    Quad = {}

    for i, info in ipairs(QuadInfo) do
        Quad[i] = love.graphics.newQuad(info[1],info[2],tileW,tileH,tilesetWidth,tilesetHeight)
    end

    -- This is the map. MODIFY IT AS YOU PLEASE
    mapTable = {
        {2,2,2,2,2,2,2,2,2,2},
        {2,2,1,1,1,1,1,1,1,2},
        {2,3,1,1,1,1,1,1,1,2},
        {2,1,1,2,1,1,1,1,1,2},
        {2,1,1,1,1,1,1,1,1,2},
        {2,2,2,2,2,2,2,2,2,2}
    }

end