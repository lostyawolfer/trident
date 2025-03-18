execute as @e[type=#arrows] at @s run function trident:arrows/main

scoreboard players enable @a blood.toggle
execute as @a[scores={blood.toggle=1}] at @s run tellraw @s [{"text":"✔","color":"green"},{"text":" Эффекты крови при уроне ","color":"white"},{"text":"отключены","color":"red"}]
execute as @a[scores={blood.toggle=1}] at @s run scoreboard players set @s blood.toggle 2
execute as @a[scores={blood.toggle=3..}] at @s run tellraw @s [{"text":"✔","color":"green"},{"text":" Эффекты крови при уроне ","color":"white"},{"text":"включены","color":"green"}]
execute as @a[scores={blood.toggle=3..}] at @s run scoreboard players set @s blood.toggle 0
execute as @a[scores={blood.toggle=..-1}] at @s run scoreboard players set @s blood.toggle 0
execute as @a[scores={blood.hp=1..}] at @s run function trident:blood_particles/low_health
execute as @a[scores={blood.dmg=1..}] at @s run function trident:blood_particles/damage
execute as @a[scores={blood.dmgabs=1..}] at @s run function trident:blood_particles/absorbtion
execute as @a[scores={blood.death=1..}] at @s run function trident:blood_particles/death

# pickup delay
execute as @e[type = item, nbt = {PickupDelay: 40s}] at @s run data merge entity @s {PickupDelay: 15s}