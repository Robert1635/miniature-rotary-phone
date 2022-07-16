give @s written_book{pages:['["",{"text":"====PVP====","color":"dark_green"},{"text":"\\n\\n\\n","color":"reset"},{"text":"[\\u51fa\\u5834\\u8005\\u7528\\u30b3\\u30de\\u30d6\\u30ed]","color":"red","clickEvent":{"action":"run_command","value":"/function tazki:pvp/fighter"}},{"text":"\\n\\n\\n\\n\\n","color":"reset"},{"text":"[\\u89b3\\u5ba2\\u7528\\u30b3\\u30de\\u30d6\\u30ed]","color":"blue","clickEvent":{"action":"run_command","value":"/function tazki:pvp/viewer"}}]','["",{"text":"[pvp\\u30b9\\u30bf\\u30fc\\u30c8]","color":"red","clickEvent":{"action":"run_command","value":"/function tazki:pvp/start"}},{"text":"\\n\\n\\n\\n\\n\\n","color":"reset"},{"text":"[\\u30ea\\u30bb\\u30c3\\u30c8]","color":"blue","clickEvent":{"action":"run_command","value":"/function tazki:pvp/reset"}}]','{"text":"[pvp\\u7d42\\u4e86]","clickEvent":{"action":"run_command","value":"/function tazki:pvp/finish"}}'],title:"pvp管理用",author:"AGENT技術部"}

function tazki:pvp/ready

scoreboard players set phantom_of_the_tazkisaba pvp_game 1

#/give @s minecraft:birch_sign{display:{Name:"\"観客用\"",Lore:["\"試合に参加しない人に押してもらってください\""]},BlockEntityTag:{"Text1":"[\"\",{\"text\":\"こちらは\"}]","Text2":"[\"\",{\"text\":\"「観客用」\",\"color\":\"#e60000\"},{\"text\":\"です\"}]"}} 1
#/give @s minecraft:birch_sign{display:{Name:"\"出場者用\"",Lore:["\"出場者にのみ毎試合押してもらってください\""]},BlockEntityTag:{"Text1":"[\"\",{\"text\":\"こちらは\"}]","Text2":"[\"\",{\"text\":\"「参加者用」\",\"color\":\"#e60000\"},{\"text\":\"です\"}]"}} 1
