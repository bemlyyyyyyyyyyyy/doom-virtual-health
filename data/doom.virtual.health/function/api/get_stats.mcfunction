# 导出当前实体的统计数据至临时记分板，便于外部读取
scoreboard players operation #out.damage dvh.temp = @s dvh.total_damage
scoreboard players operation #out.healing dvh.temp = @s dvh.total_healing
