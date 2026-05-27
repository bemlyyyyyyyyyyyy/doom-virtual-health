# 控制无敌状态 {state:1} 开启 / {state:0} 关闭
execute unless entity @s[tag=virtual_health_entity] run return fail
# 开启：标签 + Health锁(detect_damage) + Resistance V(100%减伤双保险)
$execute if data storage doom.vh:ctx _{state: 1} run tag @s add dvh.invulnerable
$execute if data storage doom.vh:ctx _{state: 1} run effect give @s minecraft:resistance infinite 4 true
# 关闭：移除标签 + 清除药水效果
$execute unless data storage doom.vh:ctx _{state: 1} run tag @s remove dvh.invulnerable
$execute unless data storage doom.vh:ctx _{state: 1} run effect clear @s minecraft:resistance
