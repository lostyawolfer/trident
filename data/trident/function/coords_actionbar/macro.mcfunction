$execute unless score time.h server matches 10.. unless score time.m server matches 10.. run title @s actionbar [{"color":"#ffd0d0","score":{"name":"@s","objective":"pos.x"}}," ",{"color":"#d0ffd0","score":{"name":"@s","objective":"pos.y"}}," ",{"color":"#d0d0ff","score":{"name":"@s","objective":"pos.z"}},{"text":"  $(compass)      ","color":"$(compass_color)"},{"text":"0","color":"$(color)"},{"color":"$(color)","score":{"name":"time.h","objective":"server"}},{"text":":","color":"$(color)"},{"text":"0","color":"$(color)"},{"color":"$(color)","score":{"name":"time.m","objective":"server"}},{"text":"$(symbol)","color":"$(color)"}]
$execute if score time.h server matches 10.. unless score time.m server matches 10.. run title @s actionbar [{"color":"#ffd0d0","score":{"name":"@s","objective":"pos.x"}}," ",{"color":"#d0ffd0","score":{"name":"@s","objective":"pos.y"}}," ",{"color":"#d0d0ff","score":{"name":"@s","objective":"pos.z"}},{"text":"  $(compass)      ","color":"$(compass_color)"},{"color":"$(color)","score":{"name":"time.h","objective":"server"}},{"text":":","color":"$(color)"},{"text":"0","color":"$(color)"},{"color":"$(color)","score":{"name":"time.m","objective":"server"}},{"text":"$(symbol)","color":"$(color)"}]
$execute unless score time.h server matches 10.. if score time.m server matches 10.. run title @s actionbar [{"color":"#ffd0d0","score":{"name":"@s","objective":"pos.x"}}," ",{"color":"#d0ffd0","score":{"name":"@s","objective":"pos.y"}}," ",{"color":"#d0d0ff","score":{"name":"@s","objective":"pos.z"}},{"text":"  $(compass)      ","color":"$(compass_color)"},{"text":"0","color":"$(color)"},{"color":"$(color)","score":{"name":"time.h","objective":"server"}},{"text":":","color":"$(color)"},{"color":"$(color)","score":{"name":"time.m","objective":"server"}},{"text":"$(symbol)","color":"$(color)"}]
$execute if score time.h server matches 10.. if score time.m server matches 10.. run title @s actionbar [{"color":"#ffd0d0","score":{"name":"@s","objective":"pos.x"}}," ",{"color":"#d0ffd0","score":{"name":"@s","objective":"pos.y"}}," ",{"color":"#d0d0ff","score":{"name":"@s","objective":"pos.z"}},{"text":"  $(compass)      ","color":"$(compass_color)"},{"color":"$(color)","score":{"name":"time.h","objective":"server"}},{"text":":","color":"$(color)"},{"color":"$(color)","score":{"name":"time.m","objective":"server"}},{"text":"$(symbol)","color":"$(color)"}]