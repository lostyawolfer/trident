tag @s add ender_dragon

execute if entity @e[tag=INIT] run function ender_dragon:dragon/phase1
execute as @e[tag=CORE,tag=INIT] at @s run kill @e[distance=..100,type=minecraft:end_crystal]

execute if score #END User matches 1 run data modify entity @s Attributes[{Name:"max_health"}].Base set value 200
execute if score #END User matches 1 run data modify entity @s Health set value 200

execute if score #END User matches 2 run data modify entity @s Attributes[{Name:"max_health"}].Base set value 250
execute if score #END User matches 2 run data modify entity @s Health set value 250

execute if score #END User matches 3 run data modify entity @s Attributes[{Name:"max_health"}].Base set value 300
execute if score #END User matches 3 run data modify entity @s Health set value 300

execute if score #END User matches 4 run data modify entity @s Attributes[{Name:"max_health"}].Base set value 350
execute if score #END User matches 4 run data modify entity @s Health set value 350

execute if score #END User matches 5 run data modify entity @s Attributes[{Name:"max_health"}].Base set value 400
execute if score #END User matches 5 run data modify entity @s Health set value 400

execute if score #END User matches 6 run data modify entity @s Attributes[{Name:"max_health"}].Base set value 450
execute if score #END User matches 6 run data modify entity @s Health set value 450

execute if score #END User matches 7.. run data modify entity @s Attributes[{Name:"max_health"}].Base set value 500
execute if score #END User matches 7.. run data modify entity @s Health set value 500



scoreboard players operation @s Health.Dummy /= @s Health.Temp

#execute if score @e[limit=1,tag=CORE] User matches 1 run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 400
#execute if score @e[limit=1,tag=CORE] User matches 1 run data modify entity @s Health set value 400

#execute if score @e[limit=1,tag=CORE] User matches 2 run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 500
#execute if score @e[limit=1,tag=CORE] User matches 2 run data modify entity @s Health set value 500

#execute if score @e[limit=1,tag=CORE] User matches 3 run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 600
#execute if score @e[limit=1,tag=CORE] User matches 3 run data modify entity @s Health set value 600

#execute if score @e[limit=1,tag=CORE] User matches 4 run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 700
#execute if score @e[limit=1,tag=CORE] User matches 4 run data modify entity @s Health set value 700

#execute if score @e[limit=1,tag=CORE] User matches 5 run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 800
#execute if score @e[limit=1,tag=CORE] User matches 5 run data modify entity @s Health set value 800

#execute if score @e[limit=1,tag=CORE] User matches 6 run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 900
#execute if score @e[limit=1,tag=CORE] User matches 6 run data modify entity @s Health set value 900

#execute if score @e[limit=1,tag=CORE] User matches 7.. run data modify entity @s Attributes[{Name:"generic.max_health"}].Base set value 1000
#execute if score @e[limit=1,tag=CORE] User matches 7.. run data modify entity @s Health set value 1000

#END
tag @e[tag=CORE] add INIT
scoreboard players set @e[tag=CORE] Tick 0
scoreboard players set @e[tag=CORE] Phase 1
