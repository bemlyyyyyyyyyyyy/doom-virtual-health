execute unless entity @s[tag=virtual_health_entity] run return fail
$scoreboard players set @s dvh.max_health $(max_health)
# 下限保底：防止上限被设为 0 或负数导致除法崩溃
execute if score @s dvh.max_health matches ..0 run scoreboard players set @s dvh.max_health 1
scoreboard players operation @s dvh.health < @s dvh.max_health
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/sync_dvh
