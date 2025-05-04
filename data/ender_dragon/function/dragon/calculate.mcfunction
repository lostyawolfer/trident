scoreboard players set @s Health.Temp 100
scoreboard players operation @s Health.Dummy = @s Health
scoreboard players operation @s Health.Dummy *= @s Health.Temp

execute if score #END User matches 1 run scoreboard players set @s Health.Temp 200
execute if score #END User matches 2 run scoreboard players set @s Health.Temp 250
execute if score #END User matches 3 run scoreboard players set @s Health.Temp 300
execute if score #END User matches 4 run scoreboard players set @s Health.Temp 350
execute if score #END User matches 5 run scoreboard players set @s Health.Temp 400
execute if score #END User matches 6 run scoreboard players set @s Health.Temp 450
execute if score #END User matches 7.. run scoreboard players set @s Health.Temp 500

scoreboard players operation dragonhealth trueEnding_settings = @s Health.Temp

scoreboard players operation @s Health.Dummy /= @s Health.Temp
scoreboard objectives setdisplay list Health.Dummy
