execute unless entity @s[tag=virtual_health_entity] run return fail
$data modify storage doom.vh:ctx _ set value $(with)
execute if entity @s[tag=dbb.has_bossbar] run function doom.bossbar:api/remove
tag @s remove virtual_health_entity
data remove entity @s data.dvh
execute unless data storage doom.vh:ctx _.kill run data modify storage doom.vh:ctx _.kill set value 1b
execute if data storage doom.vh:ctx _{kill: 1b} run kill @s
