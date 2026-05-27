# 无敌状态：锁定满血并跳过伤害检测
execute if entity @s[tag=dvh.invulnerable] run data modify entity @s Health set value 1024.0f
execute if entity @s[tag=dvh.invulnerable] run return fail
# 正常伤害检测
execute store result score @s dvh.temp run data get entity @s Health 10
execute if score @s dvh.temp matches ..10239 run function doom.virtual.health:internal/apply_damage
