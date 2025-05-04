scoreboard players set @s Health.Temp 100
scoreboard players operation @s Health.Dummy = @s Health
scoreboard players operation @s Health.Dummy *= @s Health.Temp

execute if score #END User matches 1 run scoreboard players set @s Health.Temp 400
execute if score #END User matches 2 run scoreboard players set @s Health.Temp 500
execute if score #END User matches 3 run scoreboard players set @s Health.Temp 600
execute if score #END User matches 4 run scoreboard players set @s Health.Temp 700
execute if score #END User matches 5 run scoreboard players set @s Health.Temp 800
execute if score #END User matches 6 run scoreboard players set @s Health.Temp 900
execute if score #END User matches 7.. run scoreboard players set @s Health.Temp 1000

scoreboard players operation @s Health.Dummy /= @s Health.Temp
scoreboard objectives setdisplay list Health.Dummy
