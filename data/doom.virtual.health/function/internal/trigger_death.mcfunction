data modify storage doom.vh:ctx on_death set from entity @s data.dvh.on_death
function doom.virtual.health:api/remove {with:{kill:false}}
execute if data storage doom.vh:ctx on_death run function doom.virtual.health:internal/execute_on_death with storage doom.vh:ctx
execute unless data storage doom.vh:ctx on_death run kill @s
