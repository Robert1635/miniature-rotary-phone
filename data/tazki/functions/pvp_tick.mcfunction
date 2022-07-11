
execute if entity @a[tag=pvp_fighter] run function tazki:pvp_fighter_sort

execute store result score @a[tag=pvp01] pvp_01 run data get entity @a[tag=pvp01,limit=1] Health
execute store result score @a[tag=pvp02] pvp_02 run data get entity @a[tag=pvp02,limit=1] Health
execute store result score @a[tag=pvp03] pvp_03 run data get entity @a[tag=pvp03,limit=1] Health
execute store result score @a[tag=pvp04] pvp_04 run data get entity @a[tag=pvp04,limit=1] Health
execute store result score @a[tag=pvp05] pvp_05 run data get entity @a[tag=pvp05,limit=1] Health
execute store result score @a[tag=pvp06] pvp_06 run data get entity @a[tag=pvp06,limit=1] Health
execute store result score @a[tag=pvp07] pvp_07 run data get entity @a[tag=pvp07,limit=1] Health
execute store result score @a[tag=pvp08] pvp_08 run data get entity @a[tag=pvp08,limit=1] Health
execute store result score @a[tag=pvp09] pvp_09 run data get entity @a[tag=pvp09,limit=1] Health
execute store result score @a[tag=pvp10] pvp_10 run data get entity @a[tag=pvp10,limit=1] Health

execute store result bossbar pvp_01 value run scoreboard players get @a[tag=pvp01,limit=1] pvp_01
execute store result bossbar pvp_02 value run scoreboard players get @a[tag=pvp02,limit=1] pvp_02
execute store result bossbar pvp_03 value run scoreboard players get @a[tag=pvp03,limit=1] pvp_03
execute store result bossbar pvp_04 value run scoreboard players get @a[tag=pvp04,limit=1] pvp_04
execute store result bossbar pvp_05 value run scoreboard players get @a[tag=pvp05,limit=1] pvp_05
execute store result bossbar pvp_06 value run scoreboard players get @a[tag=pvp06,limit=1] pvp_06
execute store result bossbar pvp_07 value run scoreboard players get @a[tag=pvp07,limit=1] pvp_07
execute store result bossbar pvp_08 value run scoreboard players get @a[tag=pvp08,limit=1] pvp_08
execute store result bossbar pvp_09 value run scoreboard players get @a[tag=pvp09,limit=1] pvp_09
execute store result bossbar pvp_10 value run scoreboard players get @a[tag=pvp10,limit=1] pvp_10

execute if score @a[tag=pvp01,limit=1] pvp_01 matches ..0 run bossbar set pvp_01 visible false
execute if score @a[tag=pvp02,limit=1] pvp_02 matches ..0 run bossbar set pvp_02 visible false
execute if score @a[tag=pvp03,limit=1] pvp_03 matches ..0 run bossbar set pvp_03 visible false
execute if score @a[tag=pvp04,limit=1] pvp_04 matches ..0 run bossbar set pvp_04 visible false
execute if score @a[tag=pvp05,limit=1] pvp_05 matches ..0 run bossbar set pvp_05 visible false
execute if score @a[tag=pvp06,limit=1] pvp_06 matches ..0 run bossbar set pvp_06 visible false
execute if score @a[tag=pvp07,limit=1] pvp_07 matches ..0 run bossbar set pvp_07 visible false
execute if score @a[tag=pvp08,limit=1] pvp_08 matches ..0 run bossbar set pvp_08 visible false
execute if score @a[tag=pvp09,limit=1] pvp_09 matches ..0 run bossbar set pvp_09 visible false
execute if score @a[tag=pvp10,limit=1] pvp_10 matches ..0 run bossbar set pvp_10 visible false


execute if score @a[tag=pvp01,limit=1] pvp_01 matches ..0 run tag @a[tag=pvp01,limit=1] remove surivivor
execute if score @a[tag=pvp01,limit=1] pvp_01 matches ..0 run tag @a[tag=pvp01,limit=1] remove pvp01

execute if score @a[tag=pvp02,limit=1] pvp_02 matches ..0 run tag @a[tag=pvp02,limit=1] remove surivivor
execute if score @a[tag=pvp02,limit=1] pvp_02 matches ..0 run tag @a[tag=pvp02,limit=1] remove pvp02

execute if score @a[tag=pvp03,limit=1] pvp_03 matches ..0 run tag @a[tag=pvp03,limit=1] remove surivivor
execute if score @a[tag=pvp03,limit=1] pvp_03 matches ..0 run tag @a[tag=pvp03,limit=1] remove pvp03

execute if score @a[tag=pvp04,limit=1] pvp_04 matches ..0 run tag @a[tag=pvp04,limit=1] remove surivivor
execute if score @a[tag=pvp04,limit=1] pvp_04 matches ..0 run tag @a[tag=pvp04,limit=1] remove pvp04

execute if score @a[tag=pvp05,limit=1] pvp_05 matches ..0 run tag @a[tag=pvp05,limit=1] remove surivivor
execute if score @a[tag=pvp05,limit=1] pvp_05 matches ..0 run tag @a[tag=pvp05,limit=1] remove pvp05

execute if score @a[tag=pvp06,limit=1] pvp_06 matches ..0 run tag @a[tag=pvp06,limit=1] remove surivivor
execute if score @a[tag=pvp06,limit=1] pvp_06 matches ..0 run tag @a[tag=pvp06,limit=1] remove pvp06

execute if score @a[tag=pvp07,limit=1] pvp_07 matches ..0 run tag @a[tag=pvp07,limit=1] remove surivivor
execute if score @a[tag=pvp07,limit=1] pvp_07 matches ..0 run tag @a[tag=pvp07,limit=1] remove pvp07

execute if score @a[tag=pvp08,limit=1] pvp_08 matches ..0 run tag @a[tag=pvp08,limit=1] remove surivivor
execute if score @a[tag=pvp08,limit=1] pvp_08 matches ..0 run tag @a[tag=pvp08,limit=1] remove pvp08

execute if score @a[tag=pvp09,limit=1] pvp_09 matches ..0 run tag @a[tag=pvp09,limit=1] remove surivivor
execute if score @a[tag=pvp09,limit=1] pvp_09 matches ..0 run tag @a[tag=pvp09,limit=1] remove pvp09

execute if score @a[tag=pvp10,limit=1] pvp_10 matches ..0 run tag @a[tag=pvp10,limit=1] remove surivivor
execute if score @a[tag=pvp10,limit=1] pvp_10 matches ..0 run tag @a[tag=pvp10,limit=1] remove pvp10



execute store result score phantom_of_the_tazkisaba Surivivor if entity @a[tag=surivivor]

execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run scoreboard players add @a[tag=surivivor,limit=1] pvp_won_count 1

execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_01 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_02 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_03 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_04 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_05 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_06 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_07 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_08 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_09 visible false
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run bossbar set pvp_10 visible false

execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp01
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp02
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp03
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp04
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp05
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp06
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp07
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp08
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp09
execute if score phantom_of_the_tazkisaba Surivivor matches 1 run tag @a remove pvp10

execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove surivivor