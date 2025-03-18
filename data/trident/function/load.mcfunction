scoreboard objectives add server dummy

scoreboard objectives add consts dummy
    scoreboard players set -1 consts -1
    scoreboard players set 0 consts 0
    scoreboard players set 1 consts 1
    scoreboard players set 2 consts 2
    scoreboard players set 3 consts 3
    scoreboard players set 4 consts 4
    scoreboard players set 5 consts 5
    scoreboard players set 6 consts 6
    scoreboard players set 7 consts 7
    scoreboard players set 8 consts 8
    scoreboard players set 9 consts 9
    scoreboard players set 10 consts 10
    scoreboard players set 15 consts 15
    scoreboard players set 16 consts 16
    scoreboard players set 20 consts 20
    scoreboard players set 30 consts 30
    scoreboard players set 60 consts 60
    scoreboard players set 1000 consts 1000
    scoreboard players set 24000 consts 24000
    scoreboard players set night_starts consts 12542
    scoreboard players set day_starts consts 23460

scoreboard objectives add health health
    scoreboard objectives modify health displayname "hp"
    scoreboard objectives setdisplay below_name health
    scoreboard objectives setdisplay list health

scoreboard objectives add pos.x dummy
scoreboard objectives add pos.y dummy
scoreboard objectives add pos.z dummy

scoreboard objectives add arrow.fire dummy
scoreboard objectives add arrow.lifetime dummy
scoreboard objectives add arrow.lifetime_ground dummy

scoreboard objectives add blood.dmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add blood.dmgabs minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add blood.death deathCount
scoreboard objectives add blood.toggle trigger

scoreboard objectives add coords.toggle trigger