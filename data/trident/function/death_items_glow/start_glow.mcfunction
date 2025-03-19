tag @e[type=item,distance=..3] add deathglow.death
# execute if score deathglow.despawn deathglow.config matches 0 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_inf
# execute if score deathglow.despawn deathglow.config matches 60 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_60m
# execute if score deathglow.despawn deathglow.config matches 55 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_55m
# execute if score deathglow.despawn deathglow.config matches 50 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_50m
# execute if score deathglow.despawn deathglow.config matches 45 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_45m
# execute if score deathglow.despawn deathglow.config matches 40 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_40m
# execute if score deathglow.despawn deathglow.config matches 35 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_35m
# execute if score deathglow.despawn deathglow.config matches 30 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_30m
# execute if score deathglow.despawn deathglow.config matches 25 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_25m
# execute if score deathglow.despawn deathglow.config matches 20 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_20m
# execute if score deathglow.despawn deathglow.config matches 15 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_15m
# execute if score deathglow.despawn deathglow.config matches 10 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_10m
# execute if score deathglow.despawn deathglow.config matches 5 as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_5m
execute as @e[type=item,tag=deathglow.death] at @s run tag @s add deathglow.death_15m


execute as @e[type=item,tag=deathglow.death] at @s run data merge entity @s {Age:-32768}
execute as @e[type=item,tag=deathglow.death_5m] at @s run data merge entity @s {Age:0}

execute as @e[type=item,tag=deathglow.death_5m] at @s run scoreboard players set @s deathglow.timer 30000
execute as @e[type=item,tag=deathglow.death_10m] at @s run scoreboard players set @s deathglow.timer 60000
execute as @e[type=item,tag=deathglow.death_15m] at @s run scoreboard players set @s deathglow.timer 90000
execute as @e[type=item,tag=deathglow.death_20m] at @s run scoreboard players set @s deathglow.timer 120000
execute as @e[type=item,tag=deathglow.death_25m] at @s run scoreboard players set @s deathglow.timer 150000
execute as @e[type=item,tag=deathglow.death_30m] at @s run scoreboard players set @s deathglow.timer 180000
execute as @e[type=item,tag=deathglow.death_35m] at @s run scoreboard players set @s deathglow.timer 210000
execute as @e[type=item,tag=deathglow.death_40m] at @s run scoreboard players set @s deathglow.timer 240000
execute as @e[type=item,tag=deathglow.death_45m] at @s run scoreboard players set @s deathglow.timer 270000
execute as @e[type=item,tag=deathglow.death_50m] at @s run scoreboard players set @s deathglow.timer 300000
execute as @e[type=item,tag=deathglow.death_55m] at @s run scoreboard players set @s deathglow.timer 330000
execute as @e[type=item,tag=deathglow.death_60m] at @s run scoreboard players set @s deathglow.timer 360000
execute as @e[type=item,tag=deathglow.death_inf] at @s run scoreboard players set @s deathglow.timer -20

execute as @a[scores={deathglow.itemcount=1..}] at @s run scoreboard players set @s deathglow.death 0
execute as @a[scores={deathglow.itemcount=1..}] at @s run scoreboard players set @s deathglow.itemcount 0