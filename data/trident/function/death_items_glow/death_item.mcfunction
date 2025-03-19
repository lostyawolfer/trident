data merge entity @s {Glowing:1b}
scoreboard players remove @s[scores={deathglow.timer=-10..}] deathglow.timer 5

team join deathglow.green @s[scores = {deathglow.timer = 24001..}]
team join deathglow.dark_green @s[scores = {deathglow.timer = 18001..24000}]
team join deathglow.yellow @s[scores = {deathglow.timer = 12001..18000}]
team join deathglow.gold @s[scores = {deathglow.timer = 3001..12000}]
team join deathglow.warning @s[scores = {deathglow.timer = 1501..3000}]
team join deathglow.warning2 @s[scores = {deathglow.timer = 501..1500}]
team join deathglow.warning3 @s[scores = {deathglow.timer = 1..500}]
team join deathglow.green @s[scores = {deathglow.timer = -20}]

tag @s[tag=deathglow.death,scores={deathglow.timer=-19..0},type=item] add deathglow.died
tag @s[tag=deathglow.death,scores={deathglow.timer=..-21},type=item] add deathglow.died

execute as @s[tag=deathglow.died] at @s run particle explosion ~ ~ ~ 0 0 0 0 1
kill @s[tag=deathglow.died]