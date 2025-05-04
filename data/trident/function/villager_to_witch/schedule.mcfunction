execute unless score started server matches 10.. as @e[type=villager] at @s if entity @a[distance=..10, gamemode=!spectator] run playsound entity.ender_dragon.growl neutral @a ~ ~ ~ 2 1
execute unless score started server matches 10.. as @e[type=villager] at @s if entity @a[distance=..10, gamemode=!spectator] run summon lightning_bolt

schedule function trident:villager_to_witch/clear_fire 2s append
schedule function trident:villager_to_witch/schedule 10t append