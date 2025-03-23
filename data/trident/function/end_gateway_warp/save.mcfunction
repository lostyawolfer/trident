execute store result score @s end_gateway.savedX run data get entity @s Pos[0]
execute store result score @s end_gateway.savedY run data get entity @s Pos[1]
execute store result score @s end_gateway.savedZ run data get entity @s Pos[2]
scoreboard players set @s end_gateway.activated 1
playsound minecraft:block.beacon.activate block @s

advancement grant @s only trident:end/activate_gateway
