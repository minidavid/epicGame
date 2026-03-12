
This is TIC-80 Inside LOVE.

__Installation:__
1. Get love2d from love2d.org.
2. If you haven't yet get this code.
3. Then go into your installation of this code and open within your terminal.
4. Then type love . in the terminal to run the app.

__How to Write Code with epicGame:__
- Usually with Love2d you write code in main.lua. With this, you can still do that. However, the design of this API is slightly different:

1. Go into **TIC.lua** for your regular TIC80 code.
2. Go into **map.lua** to modify map.
3. Go into **music.lua** to modify music and sfx.
4. Go into **sprite.lua** to modify sprite.

__API functions:__
1. Print(str,x,y,rad,sx,sy,color1,color2,color3,alpha) -- recommended to use Print() and not print() unless you want to make a console app.

2. mget(x,y,value)
3. mset(x,y,value)

4. keyp(key)
5. key(key, holdDuration)

6. x,y,left,middle,right = mouse()

7. time()

8. pix(x,y,color1,color2,color3,alpha)
9. rect(x,y,width,height,color1,color2,color3,alpha)
10. rectb(x,y,width,height,color1,color2,color3,alpha)
11. circ(x,y,radius,color1,color2,color3,alpha)
12. circb(x,y,radius,color1,color2,color3,alpha)
13. elli(x,y,radiusx,radiusy,segments,color1,color2,color3,alpha)
14. ellib(x,y,radiusx,radiusy,segments,color1,color2,color3,alpha)
15. line(x1,y1,x2,y2,color1,color2,color3,alpha)
16. trib(x1,y1,x2,y2,x3,y3,color1,color2,color3,alpha)
17. spr(image,alias,posx,posy,x,y,color1,color2,color3,alpha,scale,flip,rotate,w,h)

I didn't add sfx() and music() coz sfx and music is super easy to implement in love2d. Just jump into music.lua, load files in the load function and then play them, or pause or stop.

__spr tips:__

sheet should always get declared in sprite.lua. Give it your custom name as it's the image to get loaded.

Then, true is aliasing. Aliasing is the opposite of antialiasing. It allows for the natural pixel look of the sprite.

The 8*math.floor(time()/4%60/24) is posx for animation. Posx is the start of the x position of the image. So it's like the id in regular TIC80. Why do we multiply with 8? To prevent the sliding animation across the whole sprite. It skips animation. 

posy is used to declare the y position of the image.

Why did we use posx and posy? We use it due to love2d requiring Quads. It slices a spritesheet into small parts.

x, y is regular x & y you know and love.

The rest you know.


__Extra notes__
I decided to have color1, color2, color3, alpha rather for r,g,b,a rather than the default color palette. I might modify later.

In map.lua:
- The tileW, tileH defines if your game is 8x8 or 32x32, etc.

- QuadInfo defines the tile objects that you would use. It's like the map ID in TIC80.

- The mapTable is your regular map. You draw it via adding values and tables to the mapTable. 

