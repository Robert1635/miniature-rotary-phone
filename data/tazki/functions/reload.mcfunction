tellraw @a[tag=Agent] [{"text":"【追加進捗】","color":"green"},{"text":"が再読み込みされました","color":"gray"}]

function tazki:kelp_reload

function tazki:sleep_reload

function tazki:pvp/reload

#function tazki:warden_bar_reload

#常に最終行に
scoreboard objectives add login_check minecraft.custom:minecraft.leave_game

scoreboard objectives add code dummy
scoreboard players set phantom_of_the_tazkisaba code -1