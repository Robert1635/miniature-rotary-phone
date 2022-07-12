scoreboard objectives add pvp dummy

scoreboard objectives add pvp_won_count dummy

scoreboard objectives add pvp_game dummy


#ランキング表示用
scoreboard objectives add rank dummy
scoreboard objectives modify rank displayname {"text":"=======PVPイベント=======","color": "green"}
scoreboard objectives setdisplay sidebar.team.white rank
scoreboard players set 生存者の残り体力 rank 30
scoreboard players set 確定した順位 rank 0
team add pvp_rank
team modify pvp_rank color white