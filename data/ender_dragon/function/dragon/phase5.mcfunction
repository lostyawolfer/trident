execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_4 ~-5 53 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_4 ~-5 67 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_4 ~-5 96 ~-5
scoreboard players set @s Tick 0
scoreboard players set @e[tag=CORE] Phase 0
scoreboard players set @e[tag=CORE] Tick 0

kill @e[type=phantom]
kill @e[type=end_crystal]

execute unless score started server matches 10.. run scoreboard players set started server 10