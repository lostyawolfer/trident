execute if entity @s[type = !spectral_arrow] run particle minecraft:item{item: arrow} ~ ~.15 ~ .1 .1 .1 .1 20
execute if entity @s[type =  spectral_arrow] run particle minecraft:item{item:spectral_arrow} ~ ~.15 ~ .1 .1 .1 .1 20

execute if score @s arrow.fire matches 1.. at @s run particle minecraft:flame ~ ~.15 ~ .1 .1 .1 .05 5

playsound minecraft:item.shield.break player @a ~ ~ ~ .3 1.2

kill @s