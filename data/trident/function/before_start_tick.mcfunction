execute positioned 0 200 0 as @a[distance=20..] run spreadplayers ~ ~ 0 3 false @s


fill -5 199 -3 5 199 3 mangrove_planks



gamemode adventure @a[gamemode=survival]
effect give @a resistance 1 10 true
effect give @a instant_health 1 10 true
effect give @a saturation 1 10 true
effect give @a night_vision 11 0 true

gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule doMobSpawning false
kill @e[type=!player]

tag @a remove randomtp