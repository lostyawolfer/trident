scoreboard players reset @s end_gateway.savedX
scoreboard players reset @s end_gateway.savedY
scoreboard players reset @s end_gateway.savedZ
scoreboard players set @s end_gateway.activated 0
playsound minecraft:block.beacon.deactivate block @s

advancement grant @s only trident:end/deactivate_gateway
