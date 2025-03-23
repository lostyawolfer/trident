summon area_effect_cloud ~ ~ ~ {Duration: 1488, Tags:["end_gateway_warp"]}
data modify entity @e[type=area_effect_cloud, tag=end_gateway_warp, limit=1, sort=nearest] Owner set from entity @s UUID
execute as @e[type=area_effect_cloud, tag=end_gateway_warp, limit=1, sort=nearest] at @s run function trident:end_gateway_warp/tp