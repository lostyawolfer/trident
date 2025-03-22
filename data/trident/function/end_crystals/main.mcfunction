execute unless entity @e[type=ender_dragon] run bossbar set trident:end_crystals visible false

execute in minecraft:the_end positioned 0 64 0 run bossbar set trident:end_crystals players @a[distance=..179.5]
execute store result score crystals crystal_bar in minecraft:the_end positioned 0 64 0 if entity @e[type=minecraft:end_crystal, distance=10..150]
execute store result bossbar trident:end_crystals value run scoreboard players get crystals crystal_bar

execute if score crystals crystal_bar matches 1..10 run bossbar set trident:end_crystals color purple
execute if score crystals crystal_bar matches 11.. run bossbar set trident:end_crystals color red

execute in minecraft:the_end positioned 0 64 0 if entity @e[type=minecraft:ender_dragon] run bossbar set trident:end_crystals visible true
