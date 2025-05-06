scoreboard players enable @a show_coords
execute if score @s show_coords matches 2 run title @s actionbar ""
execute if score @s show_coords matches 2 run scoreboard players set @s show_coords 0
execute unless score @s show_coords matches 1 run return 0

execute unless score time server matches 12542..23460 as @s[y_rotation=-44..45] run function trident:coords_actionbar/macro {compass: S, compass_color: gray, color: yellow, symbol: "☀"}
execute unless score time server matches 12542..23460 as @s[y_rotation=45..135] run function trident:coords_actionbar/macro {compass: W, compass_color: gray, color: yellow, symbol: "☀"}
execute unless score time server matches 12542..23460 as @s[y_rotation=-135..-45] run function trident:coords_actionbar/macro {compass: E, compass_color: gray, color: yellow, symbol: "☀"}
execute unless score time server matches 12542..23460 as @s[y_rotation=-180..-135] run function trident:coords_actionbar/macro {compass: N, compass_color: red, color: yellow, symbol: "☀"}
execute unless score time server matches 12542..23460 as @s[y_rotation=135..180] run function trident:coords_actionbar/macro {compass: N, compass_color: red, color: yellow, symbol: "☀"}

execute if score time server matches 12542..23460 as @s[y_rotation=-45..45] run function trident:coords_actionbar/macro {compass: S, compass_color: gray, color: aqua, symbol:"☽"}
execute if score time server matches 12542..23460 as @s[y_rotation=45..135] run function trident:coords_actionbar/macro {compass: W, compass_color: gray, color: aqua, symbol: "☽"}
execute if score time server matches 12542..23460 as @s[y_rotation=-135..-45] run function trident:coords_actionbar/macro {compass: E, compass_color: gray, color: aqua, symbol: "☽"}
execute if score time server matches 12542..23460 as @s[y_rotation=-180..-135] run function trident:coords_actionbar/macro {compass: N, compass_color: red, color: aqua, symbol: "☽"}
execute if score time server matches 12542..23460 as @s[y_rotation=135..180] run function trident:coords_actionbar/macro {compass: N, compass_color: red, color: aqua, symbol: "☽"}