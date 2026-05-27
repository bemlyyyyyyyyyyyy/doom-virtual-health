# 重置周期计数器并分发给无敌实体
scoreboard players set #regen_cycle dvh.temp 0
execute as @e[tag=virtual_health_entity,tag=dvh.invulnerable] run function doom.virtual.health:core/regen_tick
