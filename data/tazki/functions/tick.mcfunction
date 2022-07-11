function tazki:kelp_tick

execute if score phantom_of_the_tazkisaba sleep matches 1 run function tazki:sleep_tick

execute if score phantom_of_the_tazkisaba pvp matches 1 run function tazki:pvp_tick

#function tazki:warden_bar_tick

#必ず最終行に
execute if entity @a[scores={login_check=1..}] run scoreboard players set @a[scores={login_check=1..}] login_check 0