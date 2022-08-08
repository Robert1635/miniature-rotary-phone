# ボスバーを見れるようにする
bossbar set timer players @a[tag=timer_viewer]


# スコアボードの値の減少
execute if score phantom_of_the_tazkisaba timer matches -20.. run scoreboard players remove phantom_of_the_tazkisaba timer 1

# ボスバーとスコアボードの同期
execute store result bossbar timer value run scoreboard players get phantom_of_the_tazkisaba timer


## カウントダウン
execute if score phantom_of_the_tazkisaba timer matches 1200 run tellraw @a[tag=timer_viewer] [{"text": "残り","color": "red","bold":true},{"text": "1分","color": "yellow","bold":true},{"text":"です","bold": true}]

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 200 run tellraw @s "残り10秒"

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 100 run playsound block.anvil.place master @s ~ ~ ~ 0.5
execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 100 run title @s actionbar {"text":"5秒","bold":true}

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 80 run playsound block.anvil.place master @s ~ ~ ~ 0.5
execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 80 run title @s actionbar {"text":"4秒","bold":true}

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 60 run playsound block.anvil.place master @s ~ ~ ~ 0.5
execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 60 run title @s actionbar {"text":"3秒","bold":true}

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 40 run playsound block.anvil.place master @s ~ ~ ~ 0.5
execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 40 run title @s actionbar {"text":"2秒","bold":true}

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 20 run playsound block.anvil.place master @s ~ ~ ~ 0.5
execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 20 run title @s actionbar {"text":"1秒","bold":true}

execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 0 run playsound block.anvil.place master @s ~ ~ ~ 0.5
execute as @a[tag=timer_viewer] at @s if score phantom_of_the_tazkisaba timer matches 0 run title @s actionbar ""

execute if score phantom_of_the_tazkisaba timer matches ..-15 run bossbar set timer visible false

execute if score phantom_of_the_tazkisaba timer matches 0 run tellraw @a[tag=timer_viewer] {"text": "終了","color": "red","bold": true}
execute if score phantom_of_the_tazkisaba timer matches 0 run title @p title {"text":"終了","color":"red","bold":true}

# リセット
execute if score phantom_of_the_tazkisaba timer matches -20 run scoreboard players set phantom_of_the_tazkisaba timer_switch 0
