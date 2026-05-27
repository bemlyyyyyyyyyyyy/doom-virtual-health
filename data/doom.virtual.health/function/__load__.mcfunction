scoreboard objectives add dvh.health dummy "DVH: Health"
scoreboard objectives add dvh.max_health dummy "DVH: Max Health"
scoreboard objectives add dvh.total_damage dummy "DVH: Total Damage (All)"
scoreboard objectives add dvh.total_healing dummy "DVH: Total Healing"
scoreboard objectives add dvh.player_damage dummy "DVH: Damage Dealt (Player)"
scoreboard objectives add dvh.temp dummy "DVH: Internal"
scoreboard objectives add dvh.regen_timer dummy "DVH: Regen Timer"
function doom.virtual.health:core/setup
tellraw @a {"text":"[DVH] Virtual Health System Loaded.","color":"red"}
