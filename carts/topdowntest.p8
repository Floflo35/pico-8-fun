pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
--main
function _init()
	p={x=60,y=60,speed=2}
end

function _update()
	if (btn(⬅️) and p.x>0) p.x-=1
	if (btn(➡️) and p.x<120) p.x+=1
	if (btn(⬆️) and p.y>0) p.y-=1
	if (btn(⬇️) and p.y<120) p.y+=1
end

function _draw()
	cls(2)
	--player
	spr(1,p.x,p.y)
end
-->8
--for
function foe_spawn()
	new_foe{x,y,speed=1.5}
end
__gfx__
0000000000aaaa000066660000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000aaaaaa00556655000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa5aa5aa6615516600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000aaaaaaaa6686686600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000a5aaaa5a0666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700aa5555aa0666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000aaaaaa0065d5d6000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000aaaa0000d5d50000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3b333333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
333bb33b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
333b3333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3b333b33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3b333b33000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
333b3333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
3b3b33b3000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33333333000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
