execute as @a[tag=randomtp.waiting_to_place_elevator] at @s unless block ~ ~-1 ~ #leaves run tp @s ~ ~-7 ~
execute as @a[tag=randomtp.waiting_to_place_elevator] at @s if block ~ ~-1 ~ #leaves run tp @s ~ ~-17 ~
execute as @a[tag=randomtp.waiting_to_place_elevator] at @s run function trident:place_starting_elevator
execute as @a[tag=randomtp.waiting_to_place_elevator] at @s run spawnpoint @s ~ ~ ~
execute as @a[tag=randomtp.waiting_to_place_elevator] at @s run playsound entity.generic.explode player @s

execute as @a[tag=randomtp.waiting_to_place_elevator] at @s run tag @s remove randomtp.waiting_to_place_elevator
