# 每秒递增计时器，5秒后触发回血
scoreboard players add @s dvh.regen_timer 1
execute if score @s dvh.regen_timer matches 5.. run function doom.virtual.health:internal/regen_heal
