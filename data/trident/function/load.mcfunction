scoreboard objectives add health health
scoreboard objectives modify health displayname "hp"
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health

scoreboard objectives add arrow.fire dummy
scoreboard objectives add arrow.lifetime dummy
scoreboard objectives add arrow.lifetime_ground dummy

scoreboard objectives add blood.dmg minecraft.custom:minecraft.damage_taken
scoreboard objectives add blood.dmgabs minecraft.custom:minecraft.damage_absorbed
scoreboard objectives add blood.death deathCount
scoreboard objectives add blood.toggle trigger