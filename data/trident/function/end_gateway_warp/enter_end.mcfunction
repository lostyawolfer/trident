# called by advancement
advancement revoke @s only trident:triggers/enter_end
execute if score @s end_gateway.activated matches 1 run scoreboard players add @s end_gateway.delay 1