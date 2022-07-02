execute if entity @a[scores={kelp_dest_check=1}] at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:kelp"}},predicate=tazki:in_water] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:[block_check],Small:true,NoGravity:true,Invisible:true,Marker:true}

execute if entity @a[scores={kelp_plant_dest_check=1}] at @e[type=item,nbt={Age:0s,Item:{id:"minecraft:kelp"}},predicate=tazki:in_water] align xyz run summon armor_stand ~0.5 ~ ~0.5 {Tags:[block_check],Small:true,NoGravity:true,Invisible:true  ,Marker:true}

execute at @e[tag=block_check] unless block ~ ~-1 ~ kelp run scoreboard players add @a[scores={kelp_dest_check=1},limit=1,sort=nearest] kelp_mine_count 1

execute at @e[tag=block_check] unless block ~ ~-1 ~ kelp run scoreboard players add @a[scores={kelp_plant_dest_check=1},limit=1,sort=nearest] kelp_mine_count 1

kill @e[type=armor_stand,tag=block_check]

scoreboard players set @a[scores={kelp_dest_check=1..}] kelp_dest_check 0

scoreboard players set @a[scores={kelp_plant_dest_check=1..}] kelp_plant_dest_check 0