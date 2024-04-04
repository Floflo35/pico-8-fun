pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
--main
function _init()
	p={x=60,y=90,speed=4}
	arrows={}
	create_ground()
	music(0)
end

function _update60()
	if (btn(➡️) and p.x<120) p.x+=1
	if (btn(⬅️) and p.x>0) p.x-=1
	if (btn(⬇️) and p.y<120) p.y+=1
	if (btn(⬆️) and p.y>0) p.y-=1
	if (btnp(🅾️)) shoot()
	update_arrows()
end

function _draw()
	cls(3)
	--ground
	anim_ground()
	for g in all(ground) do
		spr(g.s,g.x,g.y)
	end
	--hero
	spr(1,p.x,p.y)
	--arrows
	for a in all(arrows) do
		spr(2,a.x,a.y)
	end
	print("test2",64,64,7)
end
-->8
--arrows

function shoot()
	new_arw={
		x=p.x,
		y=p.y-1,
		speed=1.5
	}
	add(arrows,new_arw)
	sfx(0)
end

function update_arrows()
	for a in all(arrows) do
		a.y-=a.speed
	end
end
-->8
--ground

function create_ground()
	ground={}
	for i=0,15 do
		for j=0,15 do
			new_tile={
				x=8*i,
				y=8*j,
				s=flr(rnd(15)+16)
			}
			add(ground,new_tile)
		end
	end
end

function anim_ground()
	for g in all(ground) do
		if g.s==22 then
			g.s=23
		elseif g.s==23 then
			g.s=22
		end
	end
end
__gfx__
00000000333e3333333e333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000033e2e33333e2e33300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700334444333332333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000343233433332333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000377277733332333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700439299343332333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000039caac933332333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000033aaaa333332333300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
33333333333333333333333333333333333533333333333333333333333333333333333333333333333333333333333333333333333333333333333333333333
3333b33333333b333333b33333333433363336333bb33bb3333ccc33333ccc33333ccc3333333333333333333333333333333333333333333333333333333333
3333b33333333b333333b333334333333333333338bbbb833cccccc33cccccc33cccccc333333333333333333333333333333333333333333333333333333333
33b3b33333b3b3333b33b33333333343333533333338b3333cc11cc33c1cc1c33cc1ccc333333333333333333333333333333333333333333333333333333333
33b3333333b3333333b3333333333333336333533333b3333c11c1c33cc11cc33ccc1cc333333333333333333333333333333333333333333333333333333333
333333b333333b3333333b3334333333333333333333b3333cccccc33cccccc33cccccc333333333333333333333333333333333333333333333333333333333
33333b3333333b3333333b3333334333333533633334b4333cccc3333cccc3333cccc33333333333333333333333333333333333333333333333333333333333
33333333333333333333333333333333333333333333433333333333333333333333333333333333333333333333333333333333333333333333333333333333
__sfx__
000100001a5501551014410250101c04016010100100c03001730017200272003710047300573007720010100c7101072015730057100271001710007002b7002f70033600366000000000000000000000000000
00100010041500455010560041500f5600e560021500e5500d55002120021500b550021500952002150071500c100001000010000100001000010000100001000010035100001000010000100001000010000000
0010001015b7003b500dd300cd3015c7002b5009b5015c5015b7015c500fd3003b5015c700cb5005b500000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100001415008750057500075000740017400273002730027200172000720007100080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000100001e17011610146200d6200362001620016200161002610016100161000610006101360011600106000f6000e6000b60008600066000460003600026000060000000000000000000000000000000000000
000100002f25034620316302b61025610186101661013610106100d61009610056100161000610000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
002000001895000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__music__
03 01024344

