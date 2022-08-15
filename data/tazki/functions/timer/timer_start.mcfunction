bossbar set timer visible true

scoreboard players set phantom_of_the_tazkisaba timer_switch 1

# ボスバーのゲージセット
execute store result bossbar timer value run scoreboard players get phantom_of_the_tazkisaba timer_time
execute store result bossbar timer max run scoreboard players get phantom_of_the_tazkisaba timer_time
execute store result score phantom_of_the_tazkisaba timer run scoreboard players get phantom_of_the_tazkisaba timer_time

# 開始音
playsound entity.player.levelup master @a[tag=timer_viewer] ~ ~ ~ 1

# 設定されている時間
function tazki:timer/timer_check

#残り半分の時間確認
execute store result score phantom_of_the_tazkisaba timer_half run scoreboard players get phantom_of_the_tazkisaba timer
scoreboard players operation phantom_of_the_tazkisaba timer_half /= phantom_of_the_tazkisaba tiemr_half_cal