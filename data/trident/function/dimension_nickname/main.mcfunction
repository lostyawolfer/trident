execute if score time server matches 12541..23457 run team modify b_overworld color dark_green
execute unless score time server matches 12541..23457 run team modify b_overworld color green
execute if entity @e[type=ender_dragon] run team modify a_end color light_purple
execute if entity @e[type=ender_dragon] run team modify a_end suffix {"text":" 🗡","color":"dark_purple"}
execute if entity @a[team=a_end] unless entity @e[type=ender_dragon] run team modify a_end suffix {"text":"","color":"light_purple"}
execute if entity @a[team=a_end] unless entity @e[type=ender_dragon] run team modify a_end color dark_purple





execute as @a[nbt={Dimension:"minecraft:overworld"}] run function trident:dimension_nickname/macro {dim: overworld, team: b_overworld_day}
execute as @a[nbt={Dimension:"minecraft:the_nether"}] run function trident:dimension_nickname/macro {dim: nether, team: c_nether}
execute as @a[nbt={Dimension:"minecraft:the_end"}] run function trident:dimension_nickname/macro {dim: end, team: a_end}