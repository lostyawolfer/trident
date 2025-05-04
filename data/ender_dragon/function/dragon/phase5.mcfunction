execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_4 ~-5 53 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_4 ~-5 67 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_4 ~-5 96 ~-5
scoreboard players set @s Tick 0
scoreboard players set @e[tag=CORE] Phase 0
scoreboard players set @e[tag=CORE] Tick 0

execute unless score trident dragon_killed matches 1 run schedule function ender_dragon:dragon/server_update 16s