execute unless entity @s[tag=virtual_health_entity] run return fail
$data modify storage doom.dbb:ctx _ set value $(with)

# 默认选项填充逻辑
execute unless data storage doom.dbb:ctx _.id run function doom.bossbar:internal/generate_id
execute unless data storage doom.dbb:ctx _.name run data modify storage doom.dbb:ctx _.name set value '"Boss"'
execute unless data storage doom.dbb:ctx _.color run data modify storage doom.dbb:ctx _.color set value "white"
execute unless data storage doom.dbb:ctx _.style run data modify storage doom.dbb:ctx _.style set value "progress"
execute unless data storage doom.dbb:ctx _.visible run data modify storage doom.dbb:ctx _.visible set value "true"
execute unless data storage doom.dbb:ctx _.targets run data modify storage doom.dbb:ctx _.targets set value "@a"

function doom.bossbar:internal/create_impl with storage doom.dbb:ctx _
