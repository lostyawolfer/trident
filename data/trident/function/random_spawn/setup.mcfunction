execute as @a[tag=randomtp.temp] at @s run spawnpoint @s ~ ~ ~
execute as @a[tag=randomtp.temp] at @s run effect give @s resistance infinite 5 true
execute as @a[tag=randomtp.temp] at @s run summon lightning_bolt ~ ~5 ~
execute as @a[tag=randomtp.temp] at @s run effect clear @s resistance



execute as @a[tag=randomtp.temp] at @s run tag @s remove randomtp.temp