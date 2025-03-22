execute as @a[scores={ds.d=1..}] run playsound death master @s ~ ~ ~ 10000
execute as @a[scores={ds.d=1..}] if score @s ds.dCount matches 1.. run advancement grant @s only death:first
execute as @a[scores={ds.d=1..}] if score @s ds.dCount matches 10.. run advancement grant @s only death:tenth
execute as @a[scores={ds.d=1..}] if score @s ds.dCount matches 100.. run advancement grant @s only death:hundredth
execute as @a[scores={ds.d=1..}] if score @s ds.dCount matches 1000.. run advancement grant @s only death:thousandth
execute as @a[scores={ds.d=1..}] run scoreboard players set @s ds.d 0

execute as @a[scores={health=0}] run title @s times 0 20 100
execute as @a[scores={health=0}] run title @s title ""
execute as @a[scores={health=0}] run title @s subtitle [{"translate":"Это была твоя %s-я смерть","color":"red", "with":[{"bold":true, "score":{"name": "@s", "objective": "ds.dCount"}}]}]
