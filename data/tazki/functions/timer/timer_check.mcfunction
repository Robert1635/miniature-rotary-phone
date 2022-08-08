execute store result score phantom_of_the_tazkisaba timer_check run scoreboard players get phantom_of_the_tazkisaba timer_time

scoreboard players operation phantom_of_the_tazkisaba timer_check /= phantom_of_the_tazkisaba timer_cal

tellraw @s [{"text":"タイマーは現在 ","color": "red"},{"score":{"name": "phantom_of_the_tazkisaba","objective": "timer_check"},"color":"yellow"},{"text":"秒 ","color": "yellow"},{"text":"に設定されてます"}]
