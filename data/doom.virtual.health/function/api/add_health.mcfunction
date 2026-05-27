execute unless entity @s[tag=virtual_health_entity] run return fail
$scoreboard players set #pts dvh.temp $(points)
# 治疗量统计 (仅记录正数)
execute if score #pts dvh.temp > #zero dvh.temp run scoreboard players operation @s dvh.total_healing += #pts dvh.temp
scoreboard players operation @s dvh.health += #pts dvh.temp
# 防溢出与死亡判定
scoreboard players operation @s dvh.health < @s dvh.max_health
execute if score @s dvh.health matches ..0 run scoreboard players set @s dvh.health 0
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/sync_dvh
execute if score @s dvh.health matches 0 run function doom.virtual.health:internal/trigger_death
