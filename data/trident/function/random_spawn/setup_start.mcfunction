execute unless score started server matches 1.. run return 0
execute if entity @a[tag=randomtp.temp] run return 1

execute store result score no_randomtp server if entity @a[tag=!randomtp]

tag @s add randomtp
tag @s add randomtp.temp
gamemode adventure @s
title @a times 0 999999 0
title @a title ""
execute if score no_randomtp server matches ..1 run title @a subtitle ["loading spawn location for ", {"selector": "@s"}, "..."]
execute if score no_randomtp server matches 2.. run title @a subtitle ["loading spawn location for ", {"selector": "@s"}, "... (+", {"score": {"name": "no_randomtp", "objective": "server"}}, ")"]
effect give @s darkness infinite 0 true
# execute if entity @a[distance=.5..5000] run spreadplayers 0 0 5000 48500 false @s
schedule function trident:random_spawn/setup_start_tp 2t


