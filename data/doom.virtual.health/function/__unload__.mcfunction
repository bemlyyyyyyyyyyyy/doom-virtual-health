execute as @e[tag=virtual_health_entity] run function doom.virtual.health:api/remove {with:{kill:false}}
scoreboard objectives remove dvh.health
scoreboard objectives remove dvh.max_health
scoreboard objectives remove dvh.total_damage
scoreboard objectives remove dvh.total_healing
scoreboard objectives remove dvh.player_damage
scoreboard objectives remove dvh.temp
data remove storage doom.vh:ctx
