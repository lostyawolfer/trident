execute unless data storage vanilla_refresh_config:config config{load_message:0} unless score load_message refresh_settings matches ..0 run tellraw @a [{"translate": "Successfully loaded ","color": "gray"},{"translate": "True Ending v1.1.4a","color": "green"}]

data modify storage true_ending:storage version set value "1.1.4a"

execute in the_end positioned 0 80 0 run kill @e[distance=..10,type=marker,tag=trueEnding_pivot]
execute in the_end positioned 0 80 0 run summon marker ~ ~ ~ {Tags:["trueEnding_pivot"]}

scoreboard objectives add refresh_settings dummy

### Pack Installed

scoreboard objectives add splatus.packs_installed dummy
scoreboard players set TrueEnding splatus.packs_installed 1 

###
scoreboard objectives add trueEnding_dragonphase dummy
scoreboard objectives add trueEnding_health_percent dummy

scoreboard objectives add trueEnding_clock dummy

scoreboard objectives add trueEnding_health dummy
scoreboard objectives add trueEnding_health_max dummy

scoreboard objectives add trueEnding_health_extra dummy
scoreboard objectives add trueEnding_health_extra_max dummy


bossbar add true_ending:extra_health {"translate":"Extra Health"}
execute unless score lock_extra_bossbar_name trueEnding_settings matches 1 run bossbar set true_ending:extra_health name {"translate":""}
bossbar set true_ending:extra_health color pink




scoreboard objectives add trueEnding_bosstime dummy
scoreboard objectives add trueEnding_bosstime2 dummy

scoreboard objectives add trueEnding_bosstime_crystaltime dummy
scoreboard objectives add trueEnding_bosstime_crystals dummy

scoreboard objectives add trueEnding_y dummy

scoreboard objectives add trueEnding_count dummy
scoreboard objectives add trueEnding_constants dummy
scoreboard objectives add trueEnding_settings dummy
scoreboard objectives add trueEnding_settings.dragonhealth dummy
scoreboard objectives add trueEnding_storage dummy

scoreboard objectives add trueEnding_music dummy



##########################################################

scoreboard players set 2 trueEnding_constants 2
scoreboard players set 10 trueEnding_constants 10
scoreboard players set 100 trueEnding_constants 100
scoreboard players set 1000 trueEnding_constants 1000
scoreboard players set 10000 trueEnding_constants 10000



schedule function true_ending:clocks/20tick 20t

schedule function true_ending:clocks/2tick 2t

schedule function true_ending:clocks/10tick 10t

schedule function true_ending:clocks/5tick 5t

schedule function true_ending:clocks/1min 1200t


function true_ending:other/default_settings