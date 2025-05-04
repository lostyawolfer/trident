execute if entity @s[tag=banned] run return 0
tag @s add banned
damage @s .01
gamemode spectator
playsound entity.wither.death player @s
title @s title {"translate": "You're banned!", "color": "red", "bold": true}
$title @s subtitle {"translate": "for %s", "color": "red", "with": ["$(reason)"]}
title @s times 0 40 40
$tellraw @a [{"translate": "%s got banned for %s", "color": "red", "with": [{"selector": "@s"}, "$(reason)"]}]

function trident:ender_totem/drop


summon chest_minecart ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["inv_1","anti_keep_inv"]}

item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.0 from entity @s enderchest.0
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.1 from entity @s enderchest.1
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.2 from entity @s enderchest.2
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.3 from entity @s enderchest.3
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.4 from entity @s enderchest.4
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.5 from entity @s enderchest.5
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.6 from entity @s enderchest.6
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.7 from entity @s enderchest.7
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.8 from entity @s enderchest.8
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.9 from entity @s enderchest.9
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.10 from entity @s enderchest.10
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.11 from entity @s enderchest.11
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.12 from entity @s enderchest.12
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.13 from entity @s enderchest.13
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.14 from entity @s enderchest.14
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.15 from entity @s enderchest.15
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.16 from entity @s enderchest.16
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.17 from entity @s enderchest.17
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.18 from entity @s enderchest.18
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.19 from entity @s enderchest.19
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.20 from entity @s enderchest.20
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.21 from entity @s enderchest.21
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.22 from entity @s enderchest.22
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.23 from entity @s enderchest.23
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.24 from entity @s enderchest.24
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.25 from entity @s enderchest.25
item replace entity @e[tag=inv_1,tag=anti_keep_inv,type=chest_minecart,distance=0,sort=nearest,limit=1] container.26 from entity @s enderchest.26

kill @e[type=chest_minecart, tag=anti_keep_inv]

item replace entity @s enderchest.0 with air
item replace entity @s enderchest.1 with air
item replace entity @s enderchest.2 with air
item replace entity @s enderchest.3 with air
item replace entity @s enderchest.4 with air
item replace entity @s enderchest.5 with air
item replace entity @s enderchest.6 with air
item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
item replace entity @s enderchest.10 with air
item replace entity @s enderchest.11 with air
item replace entity @s enderchest.12 with air
item replace entity @s enderchest.13 with air
item replace entity @s enderchest.14 with air
item replace entity @s enderchest.15 with air
item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
item replace entity @s enderchest.20 with air
item replace entity @s enderchest.21 with air
item replace entity @s enderchest.22 with air
item replace entity @s enderchest.23 with air
item replace entity @s enderchest.24 with air
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

advancement revoke @s everything