execute as @e[type=minecraft:item_frame,tag=!changed,nbt={Item:{id: "minecraft:elytra"}}] run data merge entity @s {Item:{id: "customizableelytra:elytra_wing", Count: 1b, tag:{Damage: 441}}}
tag @e[type=minecraft:item_frame,tag=!changed] add changed

schedule function trident:one_wing_elytra/check_frame 1s replace