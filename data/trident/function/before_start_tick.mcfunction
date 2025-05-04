execute positioned 0 300 0 as @a[distance=7.., gamemode=adventure] run spreadplayers ~ ~ 0 3 under 301 false @s

worldborder warning distance 10
advancement revoke @a everything
clear @a


execute if score start.counter server matches 1.. run scoreboard players operation start.counter.s server = start.counter server
execute if score start.counter server matches 1.. run scoreboard players operation start.counter.s server /= 20 consts
execute if score start.counter server matches 1.. run scoreboard players add start.counter.s server 1

execute if score start.counter server matches 1.. run scoreboard players operation start.counter.s_start server = start.counter server
execute if score start.counter server matches 1.. run scoreboard players operation start.counter.s_start server %= 20 consts

execute if score start.counter.s_start server matches 0 if score start.counter.s server matches ..16 run playsound minecraft:block.note_block.hat master @a 0 301 0 10 1
execute if score start.counter.s_start server matches 0 if score start.counter.s server matches 5 run playsound minecraft:block.note_block.pling master @a 0 301 0 10 .8
execute if score start.counter.s_start server matches 0 if score start.counter.s server matches 4 run playsound minecraft:block.note_block.pling master @a 0 301 0 10 1
execute if score start.counter.s_start server matches 0 if score start.counter.s server matches 3 run playsound minecraft:block.note_block.pling master @a 0 301 0 10 1.2
execute if score start.counter.s_start server matches 0 if score start.counter.s server matches 2 run playsound minecraft:block.note_block.pling master @a 0 301 0 10 1.59

execute if score start.counter server matches 1.. run title @a times 0 20 60
execute if score start.counter server matches 1.. run title @a title ""
execute if score start.counter server matches 100.. run title @a subtitle {"translate": "trident.title.landing", "color": "yellow", "with": [{"score": {"name": "start.counter.s", "objective": "server"}, "bold": true}]}
execute if score start.counter server matches 1..99 run title @a subtitle {"translate": "trident.title.landing", "color": "gold", "with": [{"score": {"name": "start.counter.s", "objective": "server"}, "bold": true}]}


execute if score start.anim2 server matches 1 if score start.anim server matches 1 run playsound minecraft:entity.minecart.riding ambient @a 0 300 0 .03
execute if score start.anim2 server matches 1 if score start.anim server matches 1 run playsound minecraft:entity.minecart.inside ambient @a 0 300 0 .03
execute if score start.anim2 server matches 1 if score start.counter server matches 0..30 run playsound minecraft:entity.minecart.inside ambient @a 0 300 0 .1

execute if score start.counter server matches -10.. run scoreboard players remove start.counter server 1

execute if score start.anim server matches 4.. run scoreboard players add start.anim2 server 1
execute if score start.anim2 server matches 3.. run scoreboard players set start.anim2 server 0
execute if score start.anim server matches 4.. run scoreboard players set start.anim server 0
scoreboard players add start.anim server 1
    execute if score start.anim server matches 1 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6
    execute if score start.anim server matches 1 if score start.counter server matches 0..40 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 if score start.counter server matches 0..40 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 if score start.counter server matches 0..40 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 if score start.counter server matches 0..40 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6
    execute if score start.anim server matches 1 if score start.counter server matches 0..20 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 if score start.counter server matches 0..20 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 if score start.counter server matches 0..20 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 if score start.counter server matches 0..20 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6
    execute if score start.anim server matches 1 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6
    execute if score start.anim server matches 1 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 if score start.counter server matches 0..10 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6
    execute if score start.anim server matches 1 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6
    execute if score start.anim server matches 1 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.9 ~.2
    execute if score start.anim server matches 2 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.8 ~-.7
    execute if score start.anim server matches 3 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~.6 ~-.1
    execute if score start.anim server matches 4 if score start.counter server matches 0..5 as @a[gamemode=adventure] at @s run tp @s ~ ~ ~ ~-.7 ~.6



fill -5 299 -6 5 305 -6 stone
fill -5 299 -7 5 305 -7 stone

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
execute if score start.anim server matches 3 run fill -3 303 -6 -1 302 -6 barrier
execute if score start.anim server matches 3 run fill -4 300 -6 -2 302 -6 barrier
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

fill -7 299 -6 7 298 6 stone outline

execute if score start.anim2 server matches 2 if score start.anim server matches 1 run fill -2 299 -6 4 302 -6 barrier
execute if score start.anim2 server matches 2 if score start.anim server matches 2 run fill -2 300 -6 4 303 -6 barrier
execute if score start.anim2 server matches 2 if score start.anim server matches 3 run fill -2 301 -6 4 304 -6 barrier
execute if score start.anim2 server matches 2 if score start.anim server matches 4 run fill -2 302 -6 4 304 -6 barrier




fill -6 305 -5 6 299 5 minecraft:stone_bricks outline
fill -6 300 -5 6 300 5 birch_planks
fill -6 299 -5 6 299 5 oak_planks
fill -5 305 -4 5 305 4 smooth_stone
fill -4 301 -5 4 303 -5 iron_bars[north=false, east=true, west=true]
fill -1 300 -5 1 302 -5 air
fill -5 300 -4 5 303 4 air





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




execute if score start.counter server matches 0 run fill -9 298 -7 9 319 7 air
execute if score start.counter server matches 0 run stopsound @a
execute if score start.counter server matches 0 run playsound block.end_portal.spawn master @a 0 500 0 9999 1 1
execute if score start.counter server matches 0 run gamemode spectator @a
execute if score start.counter server matches 0 run spreadplayers 0 0 10 50 false @a
execute if score start.counter server matches 0 as @a at @s run tp @s ~ ~500 ~
execute if score start.counter server matches 0 run effect give @a blindness infinite 0 true
execute if score start.counter server matches 0 run scoreboard players set started server 1