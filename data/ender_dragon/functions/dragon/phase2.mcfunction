#Phase 2 75-50% Health
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_2 ~-5 53 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_2 ~-5 67 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_2 ~-5 96 ~-5

execute as @e[type=minecraft:ender_dragon] run data merge entity @s {CustomName:'{"translate":"entity.minecraft.ender_dragon","color":"light_purple"}'}
scoreboard players set @e[tag=CORE] Phase 2
execute in minecraft:the_end at @e[tag=end_crystal_marker] run summon minecraft:end_crystal ~ 95 ~ {Tags:["end_crystal"]}
scoreboard players set @s Tick 0
# execute at @e[tag=CORE] as @a[distance=..150] run effect give @s minecraft:darkness 3 1 true
execute at @e[tag=CORE] run summon lightning_bolt ~ ~ ~
execute at @e[tag=CORE] as @a[distance=..150] run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 .7