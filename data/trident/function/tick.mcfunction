clear @a[tag=unlocked, tag=!unlocked2]
tag @a[tag=unlocked, tag=!unlocked2] add unlocked2

recipe give @a[tag=!unlocked] *
tag @a[tag=!unlocked] add unlocked



execute as @a store result score @s pos.x run data get entity @s Pos[0]
execute as @a store result score @s pos.y run data get entity @s Pos[1]
execute as @a store result score @s pos.z run data get entity @s Pos[2]

scoreboard players add lifespan server 1
execute store result score time server run time query daytime

scoreboard players operation time.fake server = time server
scoreboard players remove time.fake server 18000
scoreboard players operation time.fake server %= 24000 consts

scoreboard players operation time.h server = time.fake server
scoreboard players operation time.m server = time.fake server

scoreboard players operation time.h server /= 1000 consts

scoreboard players operation time.m server %= 1000 consts
scoreboard players operation time.m server *= 60 consts
scoreboard players operation time.m server /= 1000 consts

execute as @e[type = item, nbt = {PickupDelay: 40s}] at @s run data merge entity @s {PickupDelay: 15s}





function trident:death_items_glow/main
function trident:death_things/main
function trident:dimension_nickname/main
function trident:end_crystals/main
function trident:end_falling_loop/main
function trident:stonecutter_damage/main
execute as @e[type = minecraft:item_frame, tag = !checked] run function trident:break_end_elytras/main
execute as @e[type = #arrows] at @s run function trident:arrows/main

scoreboard players enable @a blood.toggle
execute as @a[scores={blood.toggle=1}] run tellraw @s [{"text":"✔","color":"green"},{"text":" Эффекты крови при уроне ","color":"white"},{"text":"отключены","color":"red"}]
execute as @a[scores={blood.toggle=1}] run scoreboard players set @s blood.toggle 2
execute as @a[scores={blood.toggle=3..}] run tellraw @s [{"text":"✔","color":"green"},{"text":" Эффекты крови при уроне ","color":"white"},{"text":"включены","color":"green"}]
execute as @a[scores={blood.toggle=3..}] run scoreboard players set @s blood.toggle 0
execute as @a[scores={blood.toggle=..-1}] run scoreboard players set @s blood.toggle 0
execute as @a[scores={health=1..}] at @s run function trident:blood_particles/low_health
execute as @a[scores={blood.dmg=1..}] at @s run function trident:blood_particles/damage
execute as @a[scores={blood.dmgabs=1..}] at @s run function trident:blood_particles/absorbtion
execute as @a[scores={blood.death=1..}] at @s run function trident:blood_particles/death

execute as @a run function trident:coords_actionbar/show