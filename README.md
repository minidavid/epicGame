
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


__Extra notes__
I decided to have color1, color2, color3, alpha rather for r,g,b,a rather than the default color palette. I might modify later.

In map.lua:
- The tileW, tileH defines if your game is 8x8 or 32x32, etc.

- QuadInfo defines the tile objects that you would use. It's like the map ID in TIC80.

- The mapTable is your regular map. You draw it via adding values and tables to the mapTable. 

