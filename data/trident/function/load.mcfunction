gamerule randomTickSpeed 10
gamerule mobExplosionDropDecay false
gamerule tntExplosionDropDecay false
gamerule blockExplosionDropDecay false
gamerule doInsomnia false
gamerule playersNetherPortalDefaultDelay 20

# execute unless score dragon_beaten server matches 1 run gamerule disableRaids true



# command provided by Carped mod (making mobcap less than original for optimisation purposes)
spawn mobcaps set 40

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


team add deathglow.green
team add deathglow.dark_green
team add deathglow.yellow
team add deathglow.gold
team add deathglow.warning
team add deathglow.warning2
team add deathglow.warning3
team add deathglow.dead

team modify deathglow.green color green
team modify deathglow.dark_green color dark_green
team modify deathglow.yellow color yellow
team modify deathglow.gold color gold
team modify deathglow.warning color red
team modify deathglow.warning2 color red
team modify deathglow.warning3 color red
team modify deathglow.dead color dark_red

scoreboard objectives add deathglow.timer dummy
scoreboard objectives add deathglow.warning dummy
scoreboard objectives add deathglow.death deathCount
scoreboard objectives add deathglow.itemcount dummy


team add b_overworld {"text":"overworld","color":"dark_green"}
team add c_nether {"text":"nether","color":"dark_red"}
team add a_end {"text":"end","color":"light_purple"}

team add y_spectator {"text":"spectator","color":"light_purple"}
team add z_logging {"text":"logging in","color":"dark_aqua"}

team modify z_logging seeFriendlyInvisibles false

team modify b_overworld color green
team modify c_nether color red
team modify a_end color dark_purple

team modify y_spectator color dark_gray
team modify z_logging color dark_gray

scoreboard objectives add end_crystal_amount dummy


bossbar add endcrystals "Кристаллы края"
bossbar set minecraft:endcrystals style notched_10
bossbar set minecraft:endcrystals color purple
bossbar set minecraft:endcrystals max 10

scoreboard objectives add crystal_bar dummy


scoreboard objectives add ds.d deathCount
scoreboard objectives add ds.dCount deathCount
scoreboard objectives add ds.dTitleAnim deathCount
