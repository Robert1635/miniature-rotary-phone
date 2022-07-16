#ウォーデンのタグ付け
#execute if entity @e[type=warden,tag=!bar] run tag @e[type=warden,limit=1,tag=!bar] add bar
#execute if entity @e[type=warden,tag=bar,tag=warden1] run execute if entity @e[type=warden,tag=bar,tag=warden2] run execute if entity @e[type=warden,tag=bar,tag=warden3] run execute if entity @e[type=warden,tag=bar,tag=warden4] run execute if entity @e[type=warden,tag=bar,tag=warden5] run execute if entity @e[type=warden,tag=bar,tag=!warden6] run tag @e[type=warden,tag=bar,tag=!warden1,tag=!warden2,tag=!warden3,tag=!warden4,tag=!warden5,tag=!warden6,limit=1] add warden6
#execute if entity @e[type=warden,tag=bar,tag=warden1] run execute if entity @e[type=warden,tag=bar,tag=warden2] run execute if entity @e[type=warden,tag=bar,tag=warden3] run execute if entity @e[type=warden,tag=bar,tag=warden4] run execute if entity @e[type=warden,tag=bar,tag=!warden5] run tag @e[type=warden,tag=bar,tag=!warden1,tag=!warden2,tag=!warden3,tag=!warden4,tag=!warden5,tag=!warden6,limit=1] add warden5
#execute if entity @e[type=warden,tag=bar,tag=warden1] run execute if entity @e[type=warden,tag=bar,tag=warden2] run execute if entity @e[type=warden,tag=bar,tag=warden3] run execute if entity @e[type=warden,tag=bar,tag=!warden4] run tag @e[type=warden,tag=bar,tag=!warden1,tag=!warden2,tag=!warden3,tag=!warden4,tag=!warden5,tag=!warden6,limit=1] add warden4
#execute if entity @e[type=warden,tag=bar,tag=warden1] run execute if entity @e[type=warden,tag=bar,tag=warden2] run execute if entity @e[type=warden,tag=bar,tag=!warden3] run tag @e[type=warden,tag=bar,tag=!warden1,tag=!warden2,tag=!warden3,tag=!warden4,tag=!warden5,tag=!warden6,limit=1] add warden3
#execute if entity @e[type=warden,tag=bar,tag=warden1] run execute if entity @e[type=warden,tag=bar,tag=!warden2] run tag @e[type=warden,tag=bar,tag=!warden1,tag=!warden2,tag=!warden3,tag=!warden4,tag=!warden5,tag=!warden6,limit=1] add warden2
#execute if entity @e[type=warden,tag=bar,tag=!warden1] run tag @e[type=warden,tag=bar,tag=!warden1,tag=!warden2,tag=!warden3,tag=!warden4,tag=!warden5,tag=!warden6,limit=1] add warden1

#ウォーデンのタグ付け
execute as @e[type=warden,tag=!event,tag=!bar] unless entity @e[type=warden,tag=warden1] run tag @s add warden1
execute as @e[type=warden,tag=warden1,tag=!bar] run tag @s add bar

execute as @e[type=warden,tag=!event,tag=!bar] unless entity @e[type=warden,tag=warden2] run tag @s add warden2
execute as @e[type=warden,tag=warden2,tag=!bar] run tag @s add bar

execute as @e[type=warden,tag=!event,tag=!bar] unless entity @e[type=warden,tag=warden3] run tag @s add warden3
execute as @e[type=warden,tag=warden3,tag=!bar] run tag @s add bar

execute as @e[type=warden,tag=!event,tag=!bar] unless entity @e[type=warden,tag=warden4] run tag @s add warden4
execute as @e[type=warden,tag=warden4,tag=!bar] run tag @s add bar

execute as @e[type=warden,tag=!event,tag=!bar] unless entity @e[type=warden,tag=warden5] run tag @s add warden5
execute as @e[type=warden,tag=warden5,tag=!bar] run tag @s add bar

execute as @e[type=warden,tag=!event,tag=!bar] unless entity @e[type=warden,tag=warden6] run tag @s add warden6
execute as @e[type=warden,tag=warden6,tag=!bar] run tag @s add bar


#ウォーデンのバー表示条件
execute if entity @e[type=warden,tag=warden1] run execute as @e[type=warden,tag=warden1] at @s run bossbar set warden_1 players @a[distance=0..200,predicate=tazki:in_deep]
execute if entity @e[type=warden,tag=warden2] run execute as @e[type=warden,tag=warden2] at @s run bossbar set warden_2 players @a[distance=0..200,predicate=tazki:in_deep]
execute if entity @e[type=warden,tag=warden3] run execute as @e[type=warden,tag=warden3] at @s run bossbar set warden_3 players @a[distance=0..200,predicate=tazki:in_deep]
execute if entity @e[type=warden,tag=warden4] run execute as @e[type=warden,tag=warden4] at @s run bossbar set warden_4 players @a[distance=0..200,predicate=tazki:in_deep]
execute if entity @e[type=warden,tag=warden5] run execute as @e[type=warden,tag=warden5] at @s run bossbar set warden_5 players @a[distance=0..200,predicate=tazki:in_deep]
execute if entity @e[type=warden,tag=warden6] run execute as @e[type=warden,tag=warden6] at @s run bossbar set warden_6 players @a[distance=0..200,predicate=tazki:in_deep]

#ウォーデンの体力との同期
execute store result bossbar warden_1 value run data get entity @e[type=warden,limit=1,tag=warden1,tag=bar] Health
execute store result bossbar warden_2 value run data get entity @e[type=warden,limit=1,tag=warden2,tag=bar] Health
execute store result bossbar warden_3 value run data get entity @e[type=warden,limit=1,tag=warden3,tag=bar] Health
execute store result bossbar warden_4 value run data get entity @e[type=warden,limit=1,tag=warden4,tag=bar] Health
execute store result bossbar warden_5 value run data get entity @e[type=warden,limit=1,tag=warden5,tag=bar] Health
execute store result bossbar warden_6 value run data get entity @e[type=warden,limit=1,tag=warden6,tag=bar] Health

#バーの削除
execute unless entity @e[type=warden,tag=bar,tag=warden1] run bossbar set warden_1 players
execute unless entity @e[type=warden,tag=bar,tag=warden2] run bossbar set warden_2 players
execute unless entity @e[type=warden,tag=bar,tag=warden3] run bossbar set warden_3 players
execute unless entity @e[type=warden,tag=bar,tag=warden4] run bossbar set warden_4 players
execute unless entity @e[type=warden,tag=bar,tag=warden5] run bossbar set warden_5 players
execute unless entity @e[type=warden,tag=bar,tag=warden6] run bossbar set warden_6 players