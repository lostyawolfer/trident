execute as @a[tag=randomtp.temp] at @s run effect clear @s darkness
execute as @a[tag=randomtp.temp] at @s run effect clear @s blindness
execute as @a[tag=randomtp.temp] at @s run effect give @s blindness 1 0 true
execute as @a[tag=randomtp.temp] at @s run spawnpoint @s ~ ~ ~
execute as @a[tag=randomtp.temp] at @s run effect give @s resistance 10 5 true
#execute as @a[tag=randomtp.temp] at @s run summon lightning_bolt ~ ~5 ~
#execute as @a[tag=randomtp.temp] at @s run playsound block.portal.travel master @s
execute as @a[tag=randomtp.temp] at @s run gamemode survival @s
title @a clear

execute as @a[tag=randomtp.temp] at @s run tag @s add randomtp.waiting_to_place_elevator
execute as @a[tag=randomtp.temp] at @s run tag @s remove randomtp.temp

schedule function trident:random_spawn/place_elevator 10t