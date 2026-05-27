execute if entity @s[tag=virtual_health_entity] run return fail

$data modify storage doom.vh:ctx _ set value $(with)
tag @s add virtual_health_entity
$scoreboard players set @s dvh.max_health $(max_health)
$scoreboard players set @s dvh.health $(health)
scoreboard players set @s dvh.total_damage 0
scoreboard players set @s dvh.total_healing 0
data remove entity @s data.dvh.on_death
data modify entity @s data.dvh.on_death set from storage doom.vh:ctx _.on_death
attribute @s max_health base set 1024
data modify entity @s Health set value 1024f
