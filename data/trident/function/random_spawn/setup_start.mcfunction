tag @s add randomtp
tag @s add randomtp.temp
spreadplayers 0 0 5000 48500 false @s
execute if entity @a[distance=.5..5000] run spreadplayers 0 0 5000 48500 false @s

schedule function trident:random_spawn/setup 1t