execute positioned 0 300 0 as @a[distance=6.7.., gamemode=adventure] run spreadplayers ~ ~ 0 3 under 301 false @s

worldborder warning distance 10

execute if score start.anim server matches 4.. run scoreboard players add start.anim2 server 1
execute if score start.anim2 server matches 3.. run scoreboard players set start.anim2 server 0
execute if score start.anim server matches 4.. run scoreboard players set start.anim server 0
scoreboard players add start.anim server 1
    execute if score start.anim server matches 1 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.8



fill -5 300 -6 5 305 -6 stone
fill -5 300 -7 5 305 -7 stone

execute if score start.anim server matches 1 run setblock -4 301 -6 minecraft:lapis_ore
execute if score start.anim server matches 1 run setblock -1 302 -6 minecraft:diamond_ore
execute if score start.anim server matches 1 run setblock -2 302 -6 minecraft:diamond_ore
execute if score start.anim server matches 1 run setblock 2 303 -6 minecraft:redstone_ore
execute if score start.anim server matches 1 run setblock 2 302 -6 minecraft:redstone_ore

execute if score start.anim server matches 2 run setblock -3 303 -6 minecraft:iron_ore
execute if score start.anim server matches 2 run setblock -2 303 -6 minecraft:iron_ore
execute if score start.anim server matches 2 run setblock -2 302 -6 minecraft:coal_ore
execute if score start.anim server matches 2 run setblock 3 303 -6 minecraft:diamond_ore
execute if score start.anim server matches 2 run setblock 0 301 -6 minecraft:gold_ore
execute if score start.anim server matches 2 run setblock 1 300 -6 minecraft:coal_ore

execute if score start.anim server matches 3 run setblock 1 303 -6 minecraft:coal_ore
execute if score start.anim server matches 3 run setblock 3 302 -6 minecraft:diamond_ore
execute if score start.anim server matches 3 run fill -3 303 -6 -1 302 -6 air
execute if score start.anim server matches 3 run fill -4 300 -6 -2 302 -6 air
execute if score start.anim server matches 3 run setblock -1 303 -7 minecraft:redstone_ore
#execute if score start.anim server matches 3 run setblock -4 302 -6 wall_torch[facing=east]

execute if score start.anim server matches 4 run setblock 3 304 -6 minecraft:iron_ore
execute if score start.anim server matches 4 run setblock -1 302 -6 minecraft:iron_ore
execute if score start.anim server matches 4 run setblock -4 303 -6 minecraft:coal_ore
execute if score start.anim server matches 4 run setblock -3 303 -6 minecraft:diamond_ore
execute if score start.anim server matches 4 run setblock 1 302 -6 minecraft:gold_ore
execute if score start.anim server matches 4 run setblock 1 301 -6 minecraft:coal_ore
execute if score start.anim server matches 4 run setblock 4 301 -6 minecraft:lapis_ore
execute if score start.anim server matches 4 run setblock -3 302 -6 minecraft:diamond_ore
execute if score start.anim server matches 4 run setblock 2 304 -6 minecraft:diamond_ore
execute if score start.anim server matches 4 run setblock -2 303 -6 minecraft:redstone_ore
execute if score start.anim server matches 4 run setblock -3 300 -6 minecraft:redstone_ore

execute if score start.anim2 server matches 2 if score start.anim server matches 1 run fill -2 299 -6 4 302 -6 air
execute if score start.anim2 server matches 2 if score start.anim server matches 2 run fill -2 300 -6 4 303 -6 air
execute if score start.anim2 server matches 2 if score start.anim server matches 3 run fill -2 301 -6 4 304 -6 air
execute if score start.anim2 server matches 2 if score start.anim server matches 4 run fill -2 302 -6 4 304 -6 air




fill -7 299 -6 7 298 6 stone outline
fill -6 305 -5 6 299 5 minecraft:stone_bricks outline
fill -6 299 -5 6 299 5 oak_planks
fill -5 305 -4 5 305 4 iron_block
fill -4 301 -5 4 303 -5 iron_bars[north=false, east=true, west=true]
fill -1 300 -5 1 302 -5 air





gamemode adventure @a[gamemode=survival]
effect give @a resistance 1 10 true
effect give @a instant_health 1 10 true
effect give @a saturation 1 10 true
effect give @a night_vision 11 0 true

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule doMobSpawning false
kill @e[type=!player]

team leave @a

time set day
weather clear

tag @a remove randomtp
tag @a remove randomtp.temp



execute as @a store result score @s health run data get entity @s Health 100
scoreboard players add @a health 99
execute as @a run scoreboard players operation @s health /= 100 consts

clear @a[tag=unlocked, tag=!unlocked2]
tag @a[tag=unlocked, tag=!unlocked2] add unlocked2

recipe give @a[tag=!unlocked] *
tag @a[tag=!unlocked] add unlocked