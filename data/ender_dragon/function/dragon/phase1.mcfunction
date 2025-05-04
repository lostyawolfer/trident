#Phase 1 100-75% Health
execute at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_1 ~-5 53 ~-5
execute at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_1 ~-5 67 ~-5
execute at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_1 ~-5 96 ~-5

data modify entity @e[limit=1,type=minecraft:ender_dragon] Health set value 1000
# execute as @e[type=minecraft:ender_dragon] run data merge entity @s {CustomName:'{"translate":"	entity.minecraft.ender_dragon"}'}
scoreboard players set @e[tag=CORE] Phase 1
#execute at @e[tag=end_crystal_marker] run summon minecraft:end_crystal ~ 95 ~ {Tags:["end_crystal"]}
scoreboard players set @e[tag=CORE] Tick 0
# execute at @e[tag=CORE] as @a[distance=..150] run effect give @s minecraft:darkness 3 0 true
execute at @e[tag=CORE] as @a[distance=..150] run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 .7