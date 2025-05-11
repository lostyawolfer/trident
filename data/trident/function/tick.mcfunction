execute positioned 0 0 0 as @a[distance=..1, tag=!secret] run playsound trident:mus_smile master @s
execute positioned 0 0 0 as @a[distance=..1, tag=!secret] run gamemode spectator @s
execute positioned 0 0 0 as @a[distance=..1, tag=!secret] run tp @s ~ 666 ~
execute positioned 0 0 0 as @a[distance=..1, tag=!secret] run effect give @s blindness infinite 0 true
execute positioned 0 0 0 as @a[distance=..1, tag=!secret] run tag @s add secret

execute if score server-type server matches 1 unless score started server matches 10.. run scoreboard players set started server 10
execute if score server-type server matches 1 run kill @e[type=ender_dragon]
execute if score server-type server matches 1 run tag @a[tag=!randomtp.test_realm] add randomtp
execute if score server-type server matches 1 run tag @a[tag=!randomtp.test_realm] add randomtp.test_realm

execute unless score started server matches 1.. run return run function trident:before_start_tick
execute if score started server matches 1 run gamerule doDaylightCycle true
execute if score started server matches 1 run gamerule doWeatherCycle true
execute if score started server matches 1 run gamerule doMobSpawning true
execute if score started server matches 1 run worldborder warning distance 999999999
execute if score started server matches 1 run gamerule fallDamage true
execute if score started server matches 1 run scoreboard players set started server 2
execute if score started server matches 2 unless entity @a[tag=!randomtp, tag=randomtp.temp] run worldborder warning distance 10
execute if score started server matches 2 unless entity @a[tag=!randomtp, tag=randomtp.temp] run function true_ending:load
execute if score started server matches 2 unless entity @a[tag=!randomtp, tag=randomtp.temp] run function ender_dragon:init
execute if score started server matches 2 unless entity @a[tag=!randomtp, tag=randomtp.temp] run fill -9 298 -7 9 319 7 air
execute if score started server matches 2 unless entity @a[tag=!randomtp, tag=randomtp.temp] run scoreboard players set started server 3



execute if score started server matches 8 run playsound block.beacon.activate master @a 0 0 0 10 1 1
execute if score started server matches 8 run title @a actionbar {"translate": "trident.title.its_time", "color": "#9ee782"}
execute if score started server matches 8 run scoreboard players set started server 9




function true_ending:tick
function ender_dragon:exe

execute unless score started server matches 10.. run function trident:before_dragon_tick
execute unless score started server matches 10.. run difficulty normal
execute unless score started server matches 10.. run gamerule playersSleepingPercentage 101
execute if score started server matches 10.. run gamerule playersSleepingPercentage 50
execute if score started server matches 10.. run difficulty hard


# execute as @a store result score @s health run data get entity @s Health 100
# scoreboard players add @a health 99
# execute as @a run scoreboard players operation @s health /= 100 consts



clear @a[tag=unlocked, tag=!unlocked2]
tag @a[tag=unlocked, tag=!unlocked2] add unlocked2

recipe give @a[tag=!unlocked] *
tag @a[tag=!unlocked] add unlocked








scoreboard players add lifespan server 1
execute store result score time server run time query daytime

scoreboard players operation time.fake server = time server
scoreboard players remove time.fake server 18000
scoreboard players operation time.fake server %= 24000 consts

scoreboard players operation time.h server = time.fake server
scoreboard players operation time.m server = time.fake server

scoreboard players operation time.h server /= 1000 consts

scoreboard players operation time.m server %= 1000 consts
scoreboard players operation time.m server *= 60 consts
scoreboard players operation time.m server /= 1000 consts

execute as @e[type = item, nbt = {PickupDelay: 40s}] at @s run data merge entity @s {PickupDelay: 15s}





execute as @a if data entity @s {Inventory:[{id: "minecraft:totem_of_undying", components: {"minecraft:custom_model_data": {strings:["ender_totem"]}}}]} run tag @s add keepInventoryOnce
execute as @a unless data entity @s {Inventory:[{id: "minecraft:totem_of_undying", components: {"minecraft:custom_model_data": {strings:["ender_totem"]}}}]} run tag @s remove keepInventoryOnce

execute as @a[scores={totemofkeeping.death=1..}, tag=!keepInventory, tag=!keepInventoryOnce, gamemode=!spectator] at @s run function trident:ender_totem/drop
execute as @a[scores={totemofkeeping.death=1..}, tag= keepInventory] run scoreboard players reset @s totemofkeeping.death

execute as @a[scores={ender_totem.animation_ticker=20..}, gamemode=!creative] if score @s health matches 1.. at @s run function trident:ender_totem/animation
execute as @a[scores={ender_totem.animation_ticker=20..}, gamemode=!creative] if score @s health matches 1.. at @s run advancement grant @s only trident:adventure/ender_totem
execute as @a[scores={ender_totem.animation_ticker=20..}, gamemode=!creative] if score @s health matches 1.. at @s run clear @s totem_of_undying[minecraft:custom_model_data={strings:["ender_totem"]}] 1
execute as @a[scores={ender_totem.animation_ticker=20..}, gamemode=!creative] if score @s health matches 1.. at @s run tellraw @s {"translate": "trident.chat.ender_totem_used", "color": "dark_aqua"}
execute as @a[scores={ender_totem.animation_ticker=20..}] if score @s health matches 1.. run scoreboard players reset @s ender_totem.animation_ticker

execute as @a[scores={ender_totem.animation_ticker=1..}] if score @s health matches 1.. run scoreboard players add @s ender_totem.animation_ticker 1

execute as @a[scores={totemofkeeping.death=1..}, tag= keepInventoryOnce, tag=!keepInventory] if score @s health matches 1.. run function trident:ender_totem/keep_inventory_once





function trident:death_items_glow/main
function trident:death_things/main
function trident:dimension_nickname/main
function trident:end_crystals/main
function trident:end_falling_loop/main
function trident:stonecutter_damage/main
execute as @e[type = #arrows] at @s run function trident:arrows/main



# scoreboard players enable @a blood.toggle
# execute as @a[scores={blood.toggle=1}] run tellraw @s [{"text":"✔","color":"green"},{"text":" Эффекты крови при уроне ","color":"white"},{"text":"отключены","color":"red"}]
# execute as @a[scores={blood.toggle=1}] run scoreboard players set @s blood.toggle 2
# execute as @a[scores={blood.toggle=3..}] run tellraw @s [{"text":"✔","color":"green"},{"text":" Эффекты крови при уроне ","color":"white"},{"text":"включены","color":"green"}]
# execute as @a[scores={blood.toggle=3..}] run scoreboard players set @s blood.toggle 0
# execute as @a[scores={blood.toggle=..-1}] run scoreboard players set @s blood.toggle 0
execute as @a[scores={health=1..6}] at @s run function trident:blood_particles/low_health
execute as @a[scores={blood.dmg=1..}] at @s run function trident:blood_particles/damage
execute as @a[scores={blood.dmgabs=1..}] at @s run function trident:blood_particles/absorbtion
execute as @a[scores={blood.death=1..}] at @s run function trident:blood_particles/death

execute as @a run function trident:coords_actionbar/show




scoreboard players reset ! warden_numbering
execute as @e[type=warden] run function trident:mob_bossbar/counter {mob: warden}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 1}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 2}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 3}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 4}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 5}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 6}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 7}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 8}
function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 9}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 10}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 11}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 12}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 13}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 14}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 15}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 16}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 17}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 18}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 19}
# function trident:mob_bossbar/macro_warden {mob: warden, distance: ..50, max_health: 5000, color: blue, n: 20}


# # scoreboard players reset ! giant_numbering
# # execute as @e[type=giant] run function trident:mob_bossbar/counter {mob: giant}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 1}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 2}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 3}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 4}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 5}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 6}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 7}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 8}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 9}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 10}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 11}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 12}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 13}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 14}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 15}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 16}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 17}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 18}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 19}
# # function trident:mob_bossbar/macro {mob: giant, distance: ..100, max_health: 1000, color: green, n: 20}




execute as @a[scores={time_since_death=..20}, tag=!randomtp.temp, tag=!randomtp.waiting_to_place_elevator] at @s if predicate trident:on_spawn_bedrock run tag @s remove randomtp
#execute if entity @a[tag=!randomtp] as @a at @s run tp @s @s


execute as @a[nbt={Pos:[24000.5d, 2001d, 24000.5d]}] run tag @s add randomtp.teleporting

execute as @a[tag=randomtp.teleporting] run tag @s remove randomtp
execute as @a[tag=randomtp.teleporting] run scoreboard players add @s randomtp 1
execute as @a[tag=randomtp.teleporting] if score @s randomtp matches 2.. run tellraw @s {"translate":"alert.trident.no_spawn"}
execute as @a[tag=randomtp.teleporting] run tag @s remove randomtp.teleporting




execute as @a[scores={end_gateway.delay=1..}] run scoreboard players add @s end_gateway.delay 1
execute as @a[scores={end_gateway.delay=5..}] at @s if entity @s[predicate=trident:on_obsidian_platform] run function trident:end_gateway_warp/tp_init
execute as @a[scores={end_gateway.delay=5..}] run scoreboard players reset @s end_gateway.delay


execute as @e[type=item, nbt={Item:{id:"end_reborn:crystalline_shard"}}] at @s if predicate trident:on_end_bedrock on origin run function trident:end_gateway_warp/save
execute as @e[type=item, nbt={Item:{id:"end_reborn:crystalline_shard"}}] at @s if predicate trident:on_end_bedrock run particle minecraft:portal ~ ~ ~ 0 0 0 0.25 300 normal
execute as @e[type=item, nbt={Item:{id:"end_reborn:crystalline_shard"}}] at @s if predicate trident:on_end_bedrock run kill @s
execute as @e[type=item, nbt={Item:{id:"minecraft:chorus_fruit"}}] at @s if predicate trident:on_end_bedrock on origin run function trident:end_gateway_warp/clear
execute as @e[type=item, nbt={Item:{id:"minecraft:chorus_fruit"}}] at @s if predicate trident:on_end_bedrock run particle minecraft:portal ~ ~ ~ 0 0 0 0.25 300 normal
execute as @e[type=item, nbt={Item:{id:"minecraft:chorus_fruit"}}] at @s if predicate trident:on_end_bedrock run kill @s



execute as @a[tag=banned] run gamemode spectator @s
execute as @a[tag=banned] run title @s actionbar {"translate": "you are banned", "color": "red"}





execute as @a[scores={dt.kill=1..}] run title @a times 3 70 120
execute as @a[scores={dt.kill=1..}] run title @a title {"translate":"trident.title.dragon_killed","color":"dark_purple"}
execute as @a[scores={dt.kill=1..}] run title @a subtitle [{"translate":"trident.title.dragon_killed.sub","color":"light_purple", "with": [{"selector":"@a[scores={dt.kill=1..}]"}]}]
execute as @a[scores={dt.kill=1..}] run scoreboard players set @s dt.kill 0


scoreboard players enable @a detailed_tablist
scoreboard players set @a[scores={detailed_tablist=3..}] detailed_tablist 0