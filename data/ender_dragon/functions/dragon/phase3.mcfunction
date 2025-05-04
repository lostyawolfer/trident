#Phase 3 50-25% Health
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_3 ~-5 53 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_3 ~-5 67 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_3 ~-5 96 ~-5

execute as @e[type=minecraft:ender_dragon] run data merge entity @s {CustomName:'[{"text":"","color":"light_purple","italic":false},{"text":"Д","italic": true},{"text": "рак"},{"text":"о","italic": true},{"text": "н к"},{"text":"р","italic": true},{"text": "а"},{"text":"я","obfuscated": true, "italic": true}]'}
scoreboard players set @e[tag=CORE] Phase 3
execute in minecraft:the_end at @e[tag=end_crystal_marker] run summon minecraft:end_crystal ~ 95 ~ {Tags:["end_crystal","protected"]}

execute at @e[tag=CORE] run summon minecraft:phantom ~15 80 ~ {Health:25f,Tags:["ender"],size:1,attributes:[{id:max_health,base:25}]}
execute at @e[tag=CORE] run summon minecraft:phantom ~-15 80 ~ {Health:50f,Tags:["ender"],size:3,attributes:[{id:max_health,base:50}]}
execute at @e[tag=CORE] run summon minecraft:phantom ~ 80 ~-15 {Health:75f,Tags:["ender"],size:5,attributes:[{id:max_health,base:75}]}
execute at @e[tag=CORE] run summon minecraft:phantom ~ 80 ~15 {Health:100f,Tags:["ender"],size:8,attributes:[{id:max_health,base:100}]}
execute at @e[tag=CORE] run spreadplayers ~ ~ 3 25 false @e[tag=ender1]


scoreboard players set @s Tick 0
# execute at @e[tag=CORE] as @a[distance=..150] run effect give @s minecraft:darkness 7 1 true
execute at @e[tag=CORE] run summon lightning_bolt ~ ~ ~
execute at @e[tag=CORE] as @a[distance=..150] run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 .7
