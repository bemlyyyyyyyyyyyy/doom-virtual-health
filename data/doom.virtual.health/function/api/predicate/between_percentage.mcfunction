execute unless entity @s[tag=virtual_health_entity] run return fail
scoreboard players operation #dvh.percent dvh.temp = #dvh.min dvh.temp
function doom.virtual.health:internal/calculate_threshold
scoreboard players operation #dvh.low_limit dvh.temp = #dvh.result dvh.temp
scoreboard players operation #dvh.percent dvh.temp = #dvh.max dvh.temp
function doom.virtual.health:internal/calculate_threshold
scoreboard players operation #dvh.high_limit dvh.temp = #dvh.result dvh.temp
execute if score @s dvh.health >= #dvh.low_limit dvh.temp if score @s dvh.health <= #dvh.high_limit dvh.temp run return 1
return fail
