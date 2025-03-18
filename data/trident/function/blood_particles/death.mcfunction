execute if score @s blood.death matches 1.. run particle dust{color: [1, 0, 0], scale: 1} ~ ~1 ~ .3 .5 .3 0 40 normal @a[scores={blood.toggle=0}]
execute if score @s blood.death matches 1.. run particle block{block_state:redstone_block} ~ ~1 ~ .3 .5 .3 0 100 normal @a[scores={blood.toggle=0}]

scoreboard players reset @s blood.death