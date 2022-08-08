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

# 設定時間確認用
scoreboard objectives add timer_check dummy
