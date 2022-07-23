#鉄鉱石を採掘したときのドロップ数検知
execute as @a[scores={iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:1b}},distance=0..6] run scoreboard players add @s iron_mine_count 1
execute as @a[scores={iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:2b}},distance=0..6] run scoreboard players add @s iron_mine_count 2
execute as @a[scores={iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:3b}},distance=0..6] run scoreboard players add @s iron_mine_count 3
execute as @a[scores={iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:4b}},distance=0..6] run scoreboard players add @s iron_mine_count 4

#深層鉄鉱石を採掘したときのドロップ数検知
execute as @a[scores={deep_iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:1b}},distance=0..6] run scoreboard players add @s iron_mine_count 1
execute as @a[scores={deep_iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:2b}},distance=0..6] run scoreboard players add @s iron_mine_count 2
execute as @a[scores={deep_iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:3b}},distance=0..6] run scoreboard players add @s iron_mine_count 3
execute as @a[scores={deep_iron_ore_mine=1..}] at @s if entity @e[type=item,nbt={Age:0s,Item:{id:"minecraft:raw_iron",Count:4b}},distance=0..6] run scoreboard players add @s iron_mine_count 4

#原石ブロックを置いた時にクリエではないことの確認
execute as @a[scores={raw_iron_block_used_check=1..},gamemode=!creative] run scoreboard players add @s raw_iron_block_used 1

#原石ブロックを掘った回数が置いた回数を上回ったことの検知
execute store result score @a[scores={raw_iron_block_mined_check=1..}] raw_iron_block_operate run scoreboard players get @a[scores={raw_iron_block_mined_check=1..},limit=1] raw_iron_block_mined
execute as @a[scores={raw_iron_block_mined_check=1..}] run scoreboard players operation @s raw_iron_block_operate -= @s raw_iron_block_used


#上回っていた場合、9個の原石を採掘したことにする
execute as @a[scores={raw_iron_block_operate=1..}] run scoreboard players add @s iron_mine_count 9

#カウント用のスコアボードリセット
scoreboard players set @a[scores={iron_ore_mine=1..}] iron_ore_mine 0
scoreboard players set @a[scores={deep_iron_ore_mine=1..}] deep_iron_ore_mine 0
scoreboard players set @a[scores={raw_iron_block_mined_check=1..}] raw_iron_block_mined_check 0
scoreboard players set @a[scores={raw_iron_block_used_check=1..}] raw_iron_block_used_check 0
scoreboard players set @a[scores={raw_iron_block_operate=1..}] raw_iron_block_operate 0