execute store result score time server run time query daytime
execute store result score dim_status end_crystal_amount if entity @e[type=minecraft:end_crystal,nbt={ShowBottom:1b}]



team join b_overworld @a[nbt={Dimension:"minecraft:overworld"}, gamemode=!spectator, tag=!logging_in, team=!b_overworld, team=!z_logging]
team join c_nether @a[nbt={Dimension:"minecraft:the_nether"}, gamemode=!spectator, tag=!logging_in, team=!c_nether, team=!z_logging]
team join a_end @a[nbt={Dimension:"minecraft:the_end"}, gamemode=!spectator, tag=!logging_in, team=!a_end, team=!z_logging]
team join y_spectator @a[gamemode=spectator, team=!y_spectator, tag=!logging_in]
team join z_logging @a[team=!z_logging, tag=logging_in]


styledplayerlist switchothers @a[team=c_nether] nether
styledplayerlist switchothers @a[team=a_end] end
styledplayerlist switchothers @a[team=y_spectator] spectator
styledplayerlist switchothers @a[team=z_logging] logging_in
execute if score dim_status overworld_time matches 12541..23457 run styledplayerlist switchothers @a[team=b_overworld] overworld_night
execute unless score dim_status overworld_time matches 12541..23457 run styledplayerlist switchothers @a[team=b_overworld] overworld_day

execute if score dim_status overworld_time matches 12541..23457 run team modify b_overworld color dark_green
execute unless score dim_status overworld_time matches 12541..23457 run team modify b_overworld color green




execute if entity @e[type=ender_dragon] run team modify a_end color light_purple

execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 0 run team modify a_end suffix {"text":" 🗡","color":"dark_purple"}
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 16.. run team modify a_end suffix [{"text":" 15+","color":"dark_red", "bold": true}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 15 run team modify a_end suffix [{"text":" 15","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 14 run team modify a_end suffix [{"text":" 14","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 13 run team modify a_end suffix [{"text":" 13","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 12 run team modify a_end suffix [{"text":" 12","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 11 run team modify a_end suffix [{"text":" 11","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 10 run team modify a_end suffix [{"text":" 10","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 9 run team modify a_end suffix [{"text":" 9","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 8 run team modify a_end suffix [{"text":" 8","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 7 run team modify a_end suffix [{"text":" 7","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 6 run team modify a_end suffix [{"text":" 6","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 5 run team modify a_end suffix [{"text":" 5","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 4 run team modify a_end suffix [{"text":" 4","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 3 run team modify a_end suffix [{"text":" 3","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 2 run team modify a_end suffix [{"text":" 2","color":"dark_purple"}]
execute if entity @e[type=ender_dragon] if score dim_status end_crystal_amount matches 1 run team modify a_end suffix [{"text":" 1","color":"dark_purple"}]

execute unless entity @e[type=ender_dragon] run team modify a_end suffix {"text":"","color":"light_purple"}
execute unless entity @e[type=ender_dragon] run team modify a_end color dark_purple



scoreboard players add logging_animation server 1
execute if score logging_animation server matches 8.. run scoreboard players set logging_animation server 0
execute if score logging_animation server matches ..-1 run scoreboard players set logging_animation server 0

execute if score logging_animation server matches 0..1 run team modify z_logging prefix [{"text":"•","color":"aqua"},{"text":"•","color":"#005B5B"},{"text":"•","color":"#005B5B"},{"text":" "}]
execute if score logging_animation server matches 2..3 run team modify z_logging prefix [{"text":"•","color":"#005B5B"},{"text":"•","color":"aqua"},{"text":"•","color":"#005B5B"},{"text":" "}]
execute if score logging_animation server matches 4..5 run team modify z_logging prefix [{"text":"•","color":"#005B5B"},{"text":"•","color":"#005B5B"},{"text":"•","color":"aqua"},{"text":" "}]
execute if score logging_animation server matches 6..7 run team modify z_logging prefix [{"text":"•","color":"#005B5B"},{"text":"•","color":"aqua"},{"text":"•","color":"#005B5B"},{"text":" "}]