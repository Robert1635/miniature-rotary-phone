bossbar set pvp_01 name {"selector":"@a[tag=pvp01]"}
bossbar set pvp_02 name {"selector":"@a[tag=pvp02]"}
bossbar set pvp_03 name {"selector":"@a[tag=pvp03]"}
bossbar set pvp_04 name {"selector":"@a[tag=pvp04]"}
bossbar set pvp_05 name {"selector":"@a[tag=pvp05]"}
bossbar set pvp_06 name {"selector":"@a[tag=pvp06]"}
bossbar set pvp_07 name {"selector":"@a[tag=pvp07]"}
bossbar set pvp_08 name {"selector":"@a[tag=pvp08]"}
bossbar set pvp_09 name {"selector":"@a[tag=pvp09]"}
bossbar set pvp_10 name {"selector":"@a[tag=pvp10]"}

execute if entity @a[tag=pvp01] run bossbar set pvp_01 visible true
execute if entity @a[tag=pvp02] run bossbar set pvp_02 visible true
execute if entity @a[tag=pvp03] run bossbar set pvp_03 visible true
execute if entity @a[tag=pvp04] run bossbar set pvp_04 visible true
execute if entity @a[tag=pvp05] run bossbar set pvp_05 visible true
execute if entity @a[tag=pvp06] run bossbar set pvp_06 visible true
execute if entity @a[tag=pvp07] run bossbar set pvp_07 visible true
execute if entity @a[tag=pvp08] run bossbar set pvp_08 visible true
execute if entity @a[tag=pvp09] run bossbar set pvp_09 visible true
execute if entity @a[tag=pvp10] run bossbar set pvp_10 visible true

execute if entity @a[tag=pvp01] run bossbar set pvp_01 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp02] run bossbar set pvp_02 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp03] run bossbar set pvp_03 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp04] run bossbar set pvp_04 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp05] run bossbar set pvp_05 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp06] run bossbar set pvp_06 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp07] run bossbar set pvp_07 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp08] run bossbar set pvp_08 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp09] run bossbar set pvp_09 players @a[tag=pvp_viewer]
execute if entity @a[tag=pvp10] run bossbar set pvp_10 players @a[tag=pvp_viewer]

scoreboard players set phantom_of_the_tazkisaba pvp 1
