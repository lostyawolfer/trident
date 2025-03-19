execute in minecraft:the_end positioned 0 64 0 unless entity @e[type=minecraft:end_crystal, distance=10..150] unless entity @e[type=ender_dragon] run bossbar set minecraft:endcrystals visible false

execute in minecraft:the_end positioned 0 64 0 run bossbar set minecraft:endcrystals players @a[distance=..150]
execute store result score crystals crystal_bar in minecraft:the_end positioned 0 64 0 if entity @e[type=minecraft:end_crystal, distance=10..150]
execute store result bossbar endcrystals value run scoreboard players get crystals crystal_bar

execute if score crystals crystal_bar matches 1..10 run bossbar set endcrystals max 10
execute if score crystals crystal_bar matches 1..10 run bossbar set endcrystals style notched_10
execute if score crystals crystal_bar matches 1..10 run bossbar set endcrystals color purple
execute if score crystals crystal_bar matches 11.. run bossbar set endcrystals color red

execute in minecraft:the_end positioned 0 64 0 if entity @e[type=minecraft:end_crystal, distance=10..150] run bossbar set minecraft:endcrystals visible true
execute in minecraft:the_end positioned 0 64 0 if entity @e[type=minecraft:ender_dragon] run bossbar set minecraft:endcrystals visible true
