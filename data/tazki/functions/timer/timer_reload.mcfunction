# タイマーの設定時間
scoreboard objectives add timer_time dummy


# タイマーの残り時間
scoreboard objectives add timer dummy "残り時間"
scoreboard objectives add timer_switch dummy
bossbar add timer {"text":"残り時間"}
bossbar set timer visible false
bossbar set timer color green

# 時間計算用
scoreboard objectives add timer_cal dummy "tick_to_seconds"
scoreboard players set phantom_of_the_tazkisaba timer_cal 20
scoreboard objectives add timer_cal_minutes dummy
scoreboard players set phantom_of_the_tazkisaba timer_cal_minutes 60

# 残り半分検知用
scoreboard objectives add tiemr_half_cal dummy
scoreboard players set phantom_of_the_tazkisaba tiemr_half_cal 2
scoreboard objectives add timer_half dummy

# 設定時間確認用
scoreboard objectives add timer_check dummy

# 時間表示用
scoreboard objectives add timer_seconds dummy "残り時間の総秒数"
scoreboard objectives add timer_minutes dummy "残り時間の総分数"
scoreboard objectives add timer_second dummy "残り時間の秒数(端数)"
