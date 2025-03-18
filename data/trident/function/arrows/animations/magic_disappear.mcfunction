particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 .25 10
particle minecraft:crit ~ ~ ~ 0 0 0 .15 7
playsound minecraft:item.trident.return player @a ~ ~ ~ .5 2

execute if score @s arrow.fire matches 1.. at @s run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ .3 2
execute if score @s arrow.fire matches 1.. at @s run particle minecraft:smoke ~ ~.5 ~ .15 .15 .15 .03 3

execute if entity @s[type = !spectral_arrow, nbt = {Glowing: 1b}] at @s run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ .5 1
execute if entity @s[type = !spectral_arrow, nbt = {Glowing: 1b}] at @s run particle minecraft:instant_effect ~ ~.2 ~ .15 .15 .15 .01 3
execute if entity @s[type =  spectral_arrow] at @s run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ .5 1
execute if entity @s[type =  spectral_arrow] at @s run particle minecraft:instant_effect ~ ~.2 ~ .15 .15 .15 .01 3

kill @s