$bossbar add trident:$(mob)_$(n) {"translate": "entity.minecraft.$(mob)"}
    $bossbar set trident:$(mob)_$(n) max $(max_health)
    $bossbar set trident:$(mob)_$(n) color $(color)

$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] at @s run bossbar set trident:$(mob)_$(n) players @a[distance=$(distance)]
$execute unless entity @e[type=$(mob), scores={$(mob)_numbering=$(n)}] run bossbar set trident:$(mob)_$(n) players .
$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] store result bossbar trident:$(mob)_$(n) value run data get entity @s Health 10

