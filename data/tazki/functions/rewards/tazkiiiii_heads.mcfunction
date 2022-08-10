execute as @s at @s run summon item ~ ~ ~ {Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner: 'tazkiiiii'}}}
tellraw @s [{"text": "鯖主の頭","color": "yellow","bold":true},{"text": "を入手しました","color": "green"}]
tellraw @s [{"text": "拾い忘れ","color": "red"},{"text": "にご注意ください","color": "green"}]
title @s title [{"text":"鯖主の頭","color": "yellow","bold": true},{"text":"を入手!!!","color": "green"}]
playsound entity.player.levelup master @s
