$bossbar add trident:warden_$(n) {"translate": "entity.minecraft.warden"}
    $bossbar set trident:warden_$(n) color blue
    $bossbar set trident:warden_$(n) max 5000

$execute as @e[type=warden, scores={warden_numbering=$(n)}] at @s run bossbar set trident:warden_$(n) players @a[distance=..50]
$execute unless entity @e[type=warden, scores={warden_numbering=$(n)}] run bossbar set trident:warden_$(n) players .
$execute as @e[type=warden, scores={warden_numbering=$(n)}] store result bossbar trident:warden_$(n) value run data get entity @s Health 10