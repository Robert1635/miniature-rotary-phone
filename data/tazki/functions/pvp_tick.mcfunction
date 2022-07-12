#出場者のタグ付け(pvp_fighterが付くことでエントリー完了)&出場者に観客と同じ権限の付与
execute as @a[tag=pvp_fighter] run tag @s add pvp_viewer
execute if entity @a[tag=pvp_fighter] run function tazki:pvp_fighter_sort

#スコアボードと残り体力との同期
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

#スコアボードとボスバーの同期
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

#残り体力が0になったら非表示
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

#生存者のランキングへの体力の表示
execute if entity @a[tag=pvp01,tag=!loser] run execute store result score @a[tag=pvp01] rank run scoreboard players get @a[tag=pvp01,limit=1] pvp_01
execute if entity @a[tag=pvp02,tag=!loser] run execute store result score @a[tag=pvp02] rank run scoreboard players get @a[tag=pvp02,limit=1] pvp_02
execute if entity @a[tag=pvp03,tag=!loser] run execute store result score @a[tag=pvp03] rank run scoreboard players get @a[tag=pvp03,limit=1] pvp_03
execute if entity @a[tag=pvp04,tag=!loser] run execute store result score @a[tag=pvp04] rank run scoreboard players get @a[tag=pvp04,limit=1] pvp_04
execute if entity @a[tag=pvp05,tag=!loser] run execute store result score @a[tag=pvp05] rank run scoreboard players get @a[tag=pvp05,limit=1] pvp_05
execute if entity @a[tag=pvp06,tag=!loser] run execute store result score @a[tag=pvp06] rank run scoreboard players get @a[tag=pvp06,limit=1] pvp_06
execute if entity @a[tag=pvp07,tag=!loser] run execute store result score @a[tag=pvp07] rank run scoreboard players get @a[tag=pvp07,limit=1] pvp_07
execute if entity @a[tag=pvp08,tag=!loser] run execute store result score @a[tag=pvp08] rank run scoreboard players get @a[tag=pvp08,limit=1] pvp_08
execute if entity @a[tag=pvp09,tag=!loser] run execute store result score @a[tag=pvp09] rank run scoreboard players get @a[tag=pvp09,limit=1] pvp_09
execute if entity @a[tag=pvp10,tag=!loser] run execute store result score @a[tag=pvp10] rank run scoreboard players get @a[tag=pvp10,limit=1] pvp_10


#ランキングの表示3
execute if entity @a[tag=pvp_viewer,team=!pvp_rank] run team join pvp_rank @a[tag=pvp_viewer,team=!pvp_rank]


#残り体力が0以下になったら、番号と生存者の証のはく奪、ランキングの表示変更
execute if score @a[tag=pvp01,limit=1] pvp_01 matches ..0 run tag @a[tag=pvp01,limit=1] add loser
execute if entity @a[tag=pvp01,tag=loser] run execute store result score @a[tag=pvp01] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp01,limit=1] pvp_01 matches ..0 run tag @a[tag=pvp01,limit=1] remove surivivor
execute if score @a[tag=pvp01,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp01,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp01,limit=1] pvp_01 matches ..0 run tag @a[tag=pvp01,limit=1] remove pvp01

execute if score @a[tag=pvp02,limit=1] pvp_02 matches ..0 run tag @a[tag=pvp02,limit=1] add loser
execute if entity @a[tag=pvp02,tag=loser] run execute store result score @a[tag=pvp02] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp02,limit=1] pvp_02 matches ..0 run tag @a[tag=pvp02,limit=1] remove surivivor
execute if score @a[tag=pvp02,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp02,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp02,limit=1] pvp_02 matches ..0 run tag @a[tag=pvp02,limit=1] remove pvp02

execute if score @a[tag=pvp02,limit=1] pvp_03 matches ..0 run tag @a[tag=pvp03,limit=1] add loser
execute if entity @a[tag=pvp03,tag=loser] run execute store result score @a[tag=pvp03] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp03,limit=1] pvp_03 matches ..0 run tag @a[tag=pvp03,limit=1] remove surivivor
execute if score @a[tag=pvp03,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp03,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp03,limit=1] pvp_03 matches ..0 run tag @a[tag=pvp03,limit=1] remove pvp03

execute if score @a[tag=pvp04,limit=1] pvp_04 matches ..0 run tag @a[tag=pvp04,limit=1] add loser
execute if entity @a[tag=pvp04,tag=loser] run execute store result score @a[tag=pvp04] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp04,limit=1] pvp_04 matches ..0 run tag @a[tag=pvp04,limit=1] remove surivivor
execute if score @a[tag=pvp04,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp04,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp04,limit=1] pvp_04 matches ..0 run tag @a[tag=pvp04,limit=1] remove pvp04

execute if score @a[tag=pvp05,limit=1] pvp_05 matches ..0 run tag @a[tag=pvp05,limit=1] add loser
execute if entity @a[tag=pvp05,tag=loser] run execute store result score @a[tag=pvp05] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp05,limit=1] pvp_05 matches ..0 run tag @a[tag=pvp05,limit=1] remove surivivor
execute if score @a[tag=pvp05,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp05,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp05,limit=1] pvp_05 matches ..0 run tag @a[tag=pvp05,limit=1] remove pvp05

execute if score @a[tag=pvp06,limit=1] pvp_06 matches ..0 run tag @a[tag=pvp06,limit=1] add loser
execute if entity @a[tag=pvp06,tag=loser] run execute store result score @a[tag=pvp06] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp06,limit=1] pvp_06 matches ..0 run tag @a[tag=pvp06,limit=1] remove surivivor
execute if score @a[tag=pvp06,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp06,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp06,limit=1] pvp_06 matches ..0 run tag @a[tag=pvp06,limit=1] remove pvp06

execute if score @a[tag=pvp07,limit=1] pvp_07 matches ..0 run tag @a[tag=pvp07,limit=1] add loser
execute if entity @a[tag=pvp07,tag=loser] run execute store result score @a[tag=pvp07] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp07,limit=1] pvp_07 matches ..0 run tag @a[tag=pvp07,limit=1] remove surivivor
execute if score @a[tag=pvp07,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp07,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp07,limit=1] pvp_07 matches ..0 run tag @a[tag=pvp07,limit=1] remove pvp07

execute if score @a[tag=pvp08,limit=1] pvp_08 matches ..0 run tag @a[tag=pvp08,limit=1] add loser
execute if entity @a[tag=pvp08,tag=loser] run execute store result score @a[tag=pvp08] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp08,limit=1] pvp_08 matches ..0 run tag @a[tag=pvp08,limit=1] remove surivivor
execute if score @a[tag=pvp08,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp08,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp08,limit=1] pvp_08 matches ..0 run tag @a[tag=pvp08,limit=1] remove pvp08

execute if score @a[tag=pvp09,limit=1] pvp_09 matches ..0 run tag @a[tag=pvp09,limit=1] add loser
execute if entity @a[tag=pvp09,tag=loser] run execute store result score @a[tag=pvp09] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp09,limit=1] pvp_09 matches ..0 run tag @a[tag=pvp09,limit=1] remove surivivor
execute if score @a[tag=pvp09,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp09,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp09,limit=1] pvp_09 matches ..0 run tag @a[tag=pvp09,limit=1] remove pvp09

execute if score @a[tag=pvp10,limit=1] pvp_10 matches ..0 run tag @a[tag=pvp10,limit=1] add loser
execute if entity @a[tag=pvp10,tag=loser] run execute store result score @a[tag=pvp10] rank run scoreboard players get phantom_of_the_tazkisaba Surivivor
execute if score @a[tag=pvp10,limit=1] pvp_10 matches ..0 run tag @a[tag=pvp10,limit=1] remove surivivor
execute if score @a[tag=pvp10,limit=1,tag=loser] rank matches 0.. run scoreboard players operation @a[tag=pvp10,limit=1] rank *= phantom_of_the_tazkisaba code
execute if score @a[tag=pvp10,limit=1] pvp_10 matches ..0 run tag @a[tag=pvp10,limit=1] remove pvp10


#残りの生存者のカウント
execute store result score phantom_of_the_tazkisaba Surivivor if entity @a[tag=surivivor]

#試合開始された後に、残り生存者が1名になったら、その人に優勝ポイントの付与
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run scoreboard players add @a[tag=surivivor,limit=1] pvp_won_count 1

#試合開始された後に、残り生存者が一名になったら、すべてのバーの不可視化
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

#試合開始された後に、残り生存者が一名になったら、すべての番号のはく奪
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp01
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp02
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp03
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp04
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp05
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp06
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp07
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp08
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp09
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove pvp10

#試合開始された後に、残り生存者が一名になったら、生存者の証削除&順位の表記
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run scoreboard players set @a[tag=surivivor] rank -1
execute if score phantom_of_the_tazkisaba Surivivor matches 1 if score phantom_of_the_tazkisaba pvp matches 1 run tag @a remove surivivor