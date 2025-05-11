$team join $(team) @s[team=!$(team), gamemode=!spectator, gamemode=!creative]
$team join $(team)_creative @s[team=!$(team)_creative, gamemode=creative]
team join y_spectator @s[team=!y_spectator, gamemode=spectator]

$execute if score server-type server matches 0 if score @s detailed_tablist matches 0 run styledplayerlist switchothers @s default_$(dim)
$execute if score server-type server matches 0 if score @s detailed_tablist matches 1 run styledplayerlist switchothers @s expanded_$(dim)
$execute if score server-type server matches 0 if score @s detailed_tablist matches 2 run styledplayerlist switchothers @s mobcaps_$(dim)

$execute if score server-type server matches 1 if score @s detailed_tablist matches 0 run styledplayerlist switchothers @s test_realm_default_$(dim)
$execute if score server-type server matches 1 if score @s detailed_tablist matches 1 run styledplayerlist switchothers @s test_realm_expanded_$(dim)
$execute if score server-type server matches 1 if score @s detailed_tablist matches 2 run styledplayerlist switchothers @s test_realm_mobcaps_$(dim)

team leave @s[tag=!randomtp]