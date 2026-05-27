execute unless entity @s[tag=virtual_health_entity] run return fail
$scoreboard players set @s dvh.health $(health)
scoreboard players operation @s dvh.health < @s dvh.max_health
execute if score @s dvh.health matches ..0 run scoreboard players set @s dvh.health 0
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/sync_dvh
execute if score @s dvh.health matches 0 run function doom.virtual.health:internal/trigger_death
