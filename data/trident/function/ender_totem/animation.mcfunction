summon chest_minecart ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["keep_inv_anim"]}
item replace entity @e[tag=keep_inv_anim,type=chest_minecart,distance=0,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with totem_of_undying[minecraft:custom_model_data={strings:["ender_totem"]}]
damage @s 100
effect give @s instant_health 1 20 true
item replace entity @s weapon.mainhand from entity @e[tag=keep_inv_anim,type=chest_minecart,distance=0,sort=nearest,limit=1] container.0
item replace entity @e[tag=keep_inv_anim,type=chest_minecart,distance=0,sort=nearest,limit=1] container.0 with air
kill @e[type=chest_minecart, tag=keep_inv_anim]

effect clear @s minecraft:absorption
effect clear @s minecraft:regeneration
effect clear @s minecraft:fire_resistance

particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.07 100 normal @a
stopsound @a[distance=..10] player item.totem.use
playsound minecraft:item.totem.use player @a ~ ~ ~ 0.5 .75
playsound minecraft:entity.mooshroom.convert player @a ~ ~ ~ 1 .75

effect give @s minecraft:night_vision 3 0 true

#advancement grant @s only trident:adventure/ender_totem