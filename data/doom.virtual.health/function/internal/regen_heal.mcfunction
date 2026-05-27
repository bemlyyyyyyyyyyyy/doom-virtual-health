# 5秒回1血，上限不超过max_health
scoreboard players set @s dvh.regen_timer 0
scoreboard players add @s dvh.health 1
scoreboard players operation @s dvh.health < @s dvh.max_health
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/sync_dvh
