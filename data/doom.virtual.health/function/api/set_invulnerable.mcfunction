# 控制无敌状态 {state:1} 开启 / {state:0} 关闭
execute unless entity @s[tag=virtual_health_entity] run return fail
$execute if data storage doom.vh:ctx _{state: 1} run tag @s add dvh.invulnerable
$execute unless data storage doom.vh:ctx _{state: 1} run tag @s remove dvh.invulnerable
$execute unless data storage doom.vh:ctx _{state: 1} run scoreboard players set @s dvh.regen_timer 0
