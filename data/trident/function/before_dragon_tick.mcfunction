execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run title @a[distance = ..20] actionbar {"translate":"trident.title.not_yet"}
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run stopsound @a[distance=..20] block minecraft:block.beacon.deactivate
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 3 0
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] store result score @s end.eyes_gain_temp run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 end_portal_frame[eye=false, facing=east] replace end_portal_frame[eye=true, facing=east]
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run scoreboard players operation @s end.eyes_gain += @s end.eyes_gain_temp
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] store result score @s end.eyes_gain_temp run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 end_portal_frame[eye=false, facing=west] replace end_portal_frame[eye=true, facing=west]
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run scoreboard players operation @s end.eyes_gain += @s end.eyes_gain_temp
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] store result score @s end.eyes_gain_temp run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 end_portal_frame[eye=false, facing=north] replace end_portal_frame[eye=true, facing=north]
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run scoreboard players operation @s end.eyes_gain += @s end.eyes_gain_temp
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] store result score @s end.eyes_gain_temp run fill ~10 ~10 ~10 ~-10 ~-10 ~-10 end_portal_frame[eye=false, facing=south] replace end_portal_frame[eye=true, facing=south]
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run scoreboard players operation @s end.eyes_gain += @s end.eyes_gain_temp
execute unless score started server matches 9.. as @a at @s if score @s end.eyes_used matches 1.. unless entity @e[type=eye_of_ender, distance=..3] run scoreboard players reset @s end.eyes_gain_temp

execute unless score started server matches 9.. as @a[team=a_end] run gamerule keepInventory true
execute unless score started server matches 9.. as @a[team=a_end] run kill @s
execute unless score started server matches 9.. as @a[team=a_end] run gamerule keepInventory false


execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1
execute as @a at @s if score @s end.eyes_gain matches 1.. run give @s ender_eye
execute as @a at @s if score @s end.eyes_gain matches 1.. run scoreboard players remove @s end.eyes_gain 1

execute as @a at @s if score @s end.eyes_gain matches ..0 run scoreboard players reset @s end.eyes_gain
execute as @a if score @s end.eyes_used matches 1.. run scoreboard players reset @s end.eyes_used



execute unless score started server matches 9.. as @a[nbt={Dimension:"minecraft:the_end"}] at @s run kill @s