#kill @e[tag=CORE]
#execute run summon minecraft:marker 0 64 0 {Tags:["CORE"]}
#execute as @e[tag=CORE] at @e[type=minecraft:end_crystal] if entity @e[distance=..100,type=minecraft:ender_dragon] run summon minecraft:marker ~ 64 ~ {Tags:["end_crystal_marker"]}
#execute in minecraft:the_end run summon minecraft:marker 0 64 0 {Tags:["CORE"]}
tag @a[nbt={Dimension:"minecraft:the_end"}] add InEnd
execute as @e[tag=ender_dragon] run tag @s remove ender_dragon
execute unless score #FIX FIX matches 1 run function ender_dragon:dragon/int

#execute at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_1 ~-5 53 ~-5
#execute at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_1 ~-5 67 ~-5
#execute at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_1 ~-5 96 ~-5
#execute if entity @e[distance=..100,type=minecraft:ender_dragon] run kill @e[type=minecraft:end_crystal,tag=!end_crystal]
execute as @e[tag=CORE] at @s run kill @e[distance=..100,type=minecraft:end_crystal]
function ender_dragon:dragon/phase1
