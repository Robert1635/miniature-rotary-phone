bossbar add pvp_01 "pvp"
bossbar add pvp_02 "pvp"
bossbar add pvp_03 "pvp"
bossbar add pvp_04 "pvp"
bossbar add pvp_05 "pvp"
bossbar add pvp_06 "pvp"
bossbar add pvp_07 "pvp"
bossbar add pvp_08 "pvp"
bossbar add pvp_09 "pvp"
bossbar add pvp_10 "pvp"

bossbar set pvp_01 visible false
bossbar set pvp_02 visible false
bossbar set pvp_03 visible false
bossbar set pvp_04 visible false
bossbar set pvp_05 visible false
bossbar set pvp_06 visible false
bossbar set pvp_07 visible false
bossbar set pvp_08 visible false
bossbar set pvp_09 visible false
bossbar set pvp_10 visible false

bossbar set pvp_01 max 20
bossbar set pvp_02 max 20
bossbar set pvp_03 max 20
bossbar set pvp_04 max 20
bossbar set pvp_05 max 20
bossbar set pvp_06 max 20
bossbar set pvp_07 max 20
bossbar set pvp_08 max 20
bossbar set pvp_09 max 20
bossbar set pvp_10 max 20

bossbar set pvp_01 color red
bossbar set pvp_02 color red
bossbar set pvp_03 color red
bossbar set pvp_04 color red
bossbar set pvp_05 color red
bossbar set pvp_06 color red
bossbar set pvp_07 color red
bossbar set pvp_08 color red
bossbar set pvp_09 color red
bossbar set pvp_10 color red


scoreboard objectives add pvp_health dummy

scoreboard objectives add Surivivor dummy

scoreboard objectives add pvp_death deathCount

scoreboard players reset @a rank
scoreboard players set 生存者の残り体力 rank 1000
scoreboard players set 確定した順位 rank 0
#bossbar set pvp_health 
#bossbar set pvp_02 
#bossbar set pvp_03 
#bossbar set pvp_04 
#bossbar set pvp_05 
#bossbar set pvp_06 
#bossbar set pvp_07 
#bossbar set pvp_08 
#bossbar set pvp_09 
#bossbar set pvp_health 