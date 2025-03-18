execute if data entity @s {pickup: 0b} run data merge entity @s {pickup: 1b}

execute store result score @s arrow.fire run data get entity @s Fire
scoreboard players add @s arrow.lifetime 1
execute if data entity @s {inGround:1b} run scoreboard players add @s arrow.lifetime_ground 1
execute unless data entity @s {inGround:1b} run scoreboard players set @s arrow.lifetime_ground 0


execute if score @s arrow.lifetime_ground matches 700.. run function trident:arrows/animations/break

execute if score @s arrow.lifetime matches 1500..1525 run particle portal ~ ~ ~ .05 .05 .05 .3 1
execute if score @s arrow.lifetime matches 1525.. run particle portal ~ ~ ~ .05 .05 .05 .4 3
execute if score @s arrow.lifetime matches 1550..1555 run particle portal ~ ~ ~ .05 .05 .05 .5 7
execute if score @s arrow.lifetime matches 1600.. run function trident:arrows/animations/magic_disappear_air


execute if data entity @s {pickup: 2b} run data merge entity @s {SoundEvent: "minecraft:item.trident.hit"}
execute if data entity @s {pickup: 2b, inGround: 1b} run function trident:arrows/animations/magic_disappear

#  extingush arrows in blocks
execute if data entity @s {pickup: 2b, inGround: 1b} run function trident:arrows/animations/extingush