execute unless score started server matches 1.. run return 0

tag @s add randomtp
tag @s add randomtp.temp
gamemode survival @s
title @a times 0 999999 0
title @a title ""
title @a subtitle ["loading spawn location for ", {"selector": "@s"}, "..."]
# execute if entity @a[distance=.5..5000] run spreadplayers 0 0 5000 48500 false @s
schedule function trident:random_spawn/setup_start_tp 2t


