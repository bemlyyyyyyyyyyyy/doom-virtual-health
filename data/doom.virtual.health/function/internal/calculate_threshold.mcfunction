# 工业级防溢出算法 (Max/100)*Percent + ((Max%100)*Percent)/100
execute if score #dvh.percent dvh.temp matches 100.. run scoreboard players set #dvh.percent dvh.temp 100
execute if score #dvh.percent dvh.temp matches ..0 run scoreboard players set #dvh.percent dvh.temp 0
scoreboard players operation #t1 dvh.temp = @s dvh.max_health
scoreboard players operation #t2 dvh.temp = @s dvh.max_health
scoreboard players operation #t1 dvh.temp /= #100 dvh.temp
scoreboard players operation #t1 dvh.temp *= #dvh.percent dvh.temp
scoreboard players operation #t2 dvh.temp %= #100 dvh.temp
scoreboard players operation #t2 dvh.temp *= #dvh.percent dvh.temp
scoreboard players operation #t2 dvh.temp /= #100 dvh.temp
scoreboard players operation #dvh.result dvh.temp = #t1 dvh.temp
scoreboard players operation #dvh.result dvh.temp += #t2 dvh.temp
