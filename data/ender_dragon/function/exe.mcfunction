#make a test for players in end and make it count as a reset vvv
execute if score #END User matches 0 if entity @e[type=minecraft:ender_dragon] run function ender_dragon:int
execute as @e[type=minecraft:ender_dragon] store result score @e[tag=CORE,limit=1] Health run data get entity @s Health
execute store result score #END User if entity @a[nbt={Dimension:"minecraft:the_end"},tag=InEnd]
execute as @a[tag=InEnd,nbt=!{Dimension:"minecraft:the_end"}] run tag @s remove InEnd

execute as @e[type=ender_dragon,nbt={HurtTime:1s},tag=!ender_dragon] run function ender_dragon:dragon/init

#execute as @e[tag=CORE] store result score @s User if entity @a
execute as @e[tag=CORE] if entity @e[tag=ender_dragon] run function ender_dragon:dragon/calculate

execute as @e[tag=CORE] if score @s Phase matches 3 if score @s Tick matches 40.. as @e[tag=protected] at @s as @e[type=minecraft:arrow,distance=..5] at @s run particle dragon_breath ~ ~ ~ .1 .1 .1 .15 40
execute as @e[tag=CORE] if score @s Phase matches 3 if score @s Tick matches 40.. as @e[tag=protected] at @s as @e[type=minecraft:arrow,distance=..5] at @s run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 2 1.5
execute as @e[tag=CORE] if score @s Phase matches 3 if score @s Tick matches 40.. as @e[tag=protected] at @s as @e[type=minecraft:arrow,distance=..5] if data entity @s {pickup: 2b} at @s run function trident:arrows/animations/magic_disappear
execute as @e[tag=CORE] if score @s Phase matches 3 if score @s Tick matches 40.. as @e[tag=protected] at @s as @e[type=minecraft:arrow,distance=..5] unless data entity @s {pickup: 2b} at @s run summon item ~ ~.1 ~ {Item: {id: "minecraft:arrow", count: 1b}, Motion: [0.01d, 0.2d, 0.0d]}
execute as @e[tag=CORE] if score @s Phase matches 3 if score @s Tick matches 40.. as @e[tag=protected] at @s run kill @e[type=minecraft:arrow,distance=..5]
execute as @e[tag=CORE] if score @s Phase matches 3 if score @s Tick matches 40.. as @e[tag=protected] unless entity @e[tag=ender] run tag @s remove protected

# Phase 1 in init - execute as @e[tag=CORE] if score @s Health.Dummy matches ..75 if score @s Phase matches 1 run function ender_dragon:dragon/phase2
execute as @e[tag=CORE,tag=INIT] unless score @s Health.Dummy matches 0 if score @s Health.Dummy matches ..25 if score @s Phase matches 4 if score @s Tick matches 600 run function ender_dragon:dragon/summon
execute as @e[tag=CORE,tag=INIT] unless score @s Health.Dummy matches 0 if score @s Health.Dummy matches ..25 if score @s Phase matches 3 if score @s Tick matches 40.. run function ender_dragon:dragon/phase4
execute as @e[tag=CORE,tag=INIT] unless score @s Health.Dummy matches 0 if score @s Health.Dummy matches ..50 if score @s Phase matches 2 if score @s Tick matches 40.. run function ender_dragon:dragon/phase3
execute as @e[tag=CORE,tag=INIT] unless score @s Health.Dummy matches 0 if score @s Health.Dummy matches ..75 if score @s Phase matches 1 if score @s Tick matches 40.. run function ender_dragon:dragon/phase2

execute as @e[tag=CORE] if score @s Tick matches ..349 run scoreboard players add @s Tick 1

execute as @e[type=minecraft:ender_dragon,team=!Ender] run team join Ender
execute as @e[type=minecraft:phantom,team=!Ender] run team join Ender
execute as @e[type=minecraft:enderman,team=!Ender] run team join Ender

execute as @e[tag=CORE] unless entity @e[type=minecraft:ender_dragon] unless score @s Phase matches 0 run function ender_dragon:dragon/phase5
execute as @e[tag=CORE] if entity @e[type=minecraft:ender_dragon] if score @s Phase matches 0 as @e[type=minecraft:ender_dragon,limit=1] run function ender_dragon:dragon/init
