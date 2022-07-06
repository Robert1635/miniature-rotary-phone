execute if score phantom_of_the_tazkisaba sleep matches 1 run tellraw @a[tag=Agent] "すでにベッドは無効化されています"

tellraw @a [{"text": "今日は","color":"red","bold": true},{"text":"水曜日","color": "aqua","bold": true},{"text":"です。","color": "red","bold": true},{"text":"寝たらあかんデー","color": "yellow","bold": true}]

title @a title {"text": "寝たらあかんデー","color": "yellow","bold": true}

title @a subtitle {"text": "毎週水曜日は寝るの禁止！！","bold": true,"italic": true}

scoreboard players set phantom_of_the_tazkisaba sleep 1