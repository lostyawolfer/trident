#Phase 4 25..% Health
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_base_phase_4 ~-5 53 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_bottom_phase_4 ~-5 67 ~-5
execute in minecraft:the_end at @e[tag=end_crystal_marker] run place template minecraft:pillar_top_phase_4 ~-5 96 ~-5

execute as @e[type=minecraft:ender_dragon] run data merge entity @s {CustomName:'[{"text":"","color":"dark_purple","italic":true},{"text":"Д","obfuscated": true},{"text": "рак"},{"text":"о","obfuscated": true},{"text": "н к"},{"text":"р","obfuscated": true},{"text": "а"},{"text":"я","obfuscated": true}]'}
scoreboard players set @e[tag=CORE] Phase 4
execute in minecraft:the_end at @e[tag=end_crystal_marker] run summon phantom ~ 95 ~ {Health:15f,Passengers:[{id:"minecraft:end_crystal",ShowBottom:0b,Tags:["end_crystal"]}],active_effects:[{id:fire_resistance,amplifier:1b,duration:5120,show_particles:0b},{id:invisibility,amplifier:1b,duration:5120,show_particles:0b}],attributes:[{id: max_health, base: 15}]}
scoreboard players set @s Tick 0
# execute at @e[tag=CORE] as @a[distance=..150] run effect give @s minecraft:darkness 3 1 true
# execute at @e[tag=CORE] as @a[distance=..150] run effect give @s minecraft:weakness 60 1 false
# execute at @e[tag=CORE] as @a[distance=..150] run effect give @s minecraft:mining_fatigue 180 2 false
# execute at @e[tag=CORE] as @a[distance=..150] run particle elder_guardian ~ ~ ~
execute at @e[tag=CORE] run summon lightning_bolt ~ ~ ~
execute at @e[tag=CORE] as @a[distance=..150] run playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 10 .7
# execute at @e[tag=CORE] as @a[distance=..150] run playsound minecraft:entity.elder_guardian.curse hostile @a ~ ~ ~ 10 .7