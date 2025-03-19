execute as @a[scores={deathglow.death=1..}] at @s store result score @s deathglow.itemcount if entity @e[type=item,distance=..4]
execute as @a[scores={deathglow.itemcount=1..}] at @s run function trident:death_items_glow/start_glow

execute as @e[tag=deathglow.death, type=item] at @s run function trident:death_items_glow/death_item


scoreboard players add deathglow deathglow.warning 1
scoreboard players add deathglow2 deathglow.warning 1
scoreboard players add deathglow3 deathglow.warning 1
execute if score deathglow deathglow.warning matches ..10 run team modify deathglow.warning color white
execute if score deathglow deathglow.warning matches 11.. run team modify deathglow.warning color red
execute if score deathglow2 deathglow.warning matches ..5 run team modify deathglow.warning2 color white
execute if score deathglow2 deathglow.warning matches 6.. run team modify deathglow.warning2 color red
execute if score deathglow3 deathglow.warning matches ..2 run team modify deathglow.warning3 color white
execute if score deathglow3 deathglow.warning matches 3.. run team modify deathglow.warning3 color red
execute if score deathglow deathglow.warning matches 20.. run scoreboard players set deathglow deathglow.warning 0
execute if score deathglow2 deathglow.warning matches 11.. run scoreboard players set deathglow2 deathglow.warning 0
execute if score deathglow3 deathglow.warning matches 4.. run scoreboard players set deathglow3 deathglow.warning 0