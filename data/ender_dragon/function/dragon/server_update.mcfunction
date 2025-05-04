scoreboard players set trident dragon_killed 1
kill @e[type=phantom, tag=ender]
gamerule playersSleepingPercentage 50
datapack disable "file/!! no more villages"

tellraw @a [{"translate":"announce.trident.dragon_killed"}]