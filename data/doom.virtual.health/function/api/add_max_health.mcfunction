execute unless entity @s[tag=virtual_health_entity] run return fail
$scoreboard players set #pts dvh.temp $(points)
scoreboard players operation @s dvh.max_health += #pts dvh.temp
execute if score @s dvh.max_health matches ..0 run scoreboard players set @s dvh.max_health 1
scoreboard players operation @s dvh.health < @s dvh.max_health
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/sync_dvh
