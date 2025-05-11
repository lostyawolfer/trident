$team join $(team) @s[team=!$(team)]
$execute if score @s detailed_tablist matches 0 run styledplayerlist switchothers @s default_$(dim)
$execute if score @s detailed_tablist matches 1 run styledplayerlist switchothers @s expanded_$(dim)
$execute if score @s detailed_tablist matches 2 run styledplayerlist switchothers @s mobcaps_$(dim)
