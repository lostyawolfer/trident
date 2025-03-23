execute store result entity @s Pos[0] double 1 run execute on origin run scoreboard players get @s end_gateway.savedX
execute store result entity @s Pos[1] double 1 run execute on origin run scoreboard players get @s end_gateway.savedY
execute store result entity @s Pos[2] double 1 run execute on origin run scoreboard players get @s end_gateway.savedZ

execute at @s on origin in minecraft:the_end run tp @s ~.5 ~ ~.5

execute at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0.125 900 normal
execute at @s run playsound minecraft:block.beacon.power_select block @a ~ ~ ~

kill @s
