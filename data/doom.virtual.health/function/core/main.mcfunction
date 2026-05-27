# 伤害检测
execute as @e[tag=virtual_health_entity] run function doom.virtual.health:core/detect_damage
# 无敌回血周期 (每20tick=1秒)
scoreboard players add #regen_cycle dvh.temp 1
execute if score #regen_cycle dvh.temp matches 20.. run function doom.virtual.health:core/regen_cycle
