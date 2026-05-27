# 1. 伤害数值换算
scoreboard players set #damage dvh.temp 10240
scoreboard players operation #damage dvh.temp -= @s dvh.temp
scoreboard players add #damage dvh.temp 5
scoreboard players operation #damage dvh.temp /= #ten dvh.temp
execute if score #damage dvh.temp matches ..0 run scoreboard players set #damage dvh.temp 1

# 2. 伤害统计 (总伤害与玩家伤害)
scoreboard players operation @s dvh.total_damage += #damage dvh.temp
execute on attacker if entity @s[type=player] run scoreboard players operation @s dvh.player_damage += #damage dvh.temp

# 3. 虚拟扣血与原版血量重置
scoreboard players operation @s dvh.health -= #damage dvh.temp
execute if score @s dvh.health matches ..0 run scoreboard players set @s dvh.health 0
data modify entity @s Health set value 1024.0f

# 4. 同步视觉与死亡分发
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/sync_dvh
execute if score @s dvh.health matches 0 run function doom.virtual.health:internal/trigger_death
