$bossbar add trident:$(mob)_$(n) {"translate": "entity.minecraft.$(mob)"}
    $bossbar set trident:$(mob)_$(n) max $(max_health)

$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] at @s run bossbar set trident:$(mob)_$(n) players @a[distance=$(distance)]
$execute unless entity @e[type=$(mob), scores={$(mob)_numbering=$(n)}] run bossbar set trident:$(mob)_$(n) players .
$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] store result bossbar trident:$(mob)_$(n) value run data get entity @s Health 10



$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] store result score @s $(mob)_anger run data get entity @s anger.suspects[0].anger

$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] unless score @s $(mob)_anger matches 90.. run bossbar set trident:$(mob)_$(n) color $(color)
$execute as @e[type=$(mob), scores={$(mob)_numbering=$(n)}] if score @s $(mob)_anger matches 90.. run bossbar set trident:$(mob)_$(n) color yellow
