title @a[nbt={SleepTimer:1s}] actionbar [{"text": "今日は","color":"red","bold": true},{"text":"水曜日","color": "aqua","bold": true},{"text":"です。","color": "red","bold": true},{"text":"寝たらあかんデー","color": "yellow","bold": true}]

execute as @a[nbt={SleepTimer:1s}] at @a[nbt={SleepTimer:1s}] run tp @s ~ ~0.00001 ~

execute if entity @a[scores={login_check=1..}] run title @a[scores={login_check=1..}] title {"text": "寝たらあかんデー","color": "yellow","bold": true}

execute if entity @a[scores={login_check=1..}] run title @a[scores={login_check=1..}] subtitle {"text": "毎週水曜日は寝るの禁止！！","bold": true,"italic": true}