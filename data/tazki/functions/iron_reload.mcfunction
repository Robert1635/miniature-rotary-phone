#鉄鉱石の採掘検知
scoreboard objectives add iron_ore_mine minecraft.mined:minecraft.iron_ore
#深層鉄鉱石の検知
scoreboard objectives add deep_iron_ore_mine minecraft.mined:minecraft.deepslate_iron_ore
#原石ブロックの採掘数検知
scoreboard objectives add raw_iron_block_mined minecraft.mined:minecraft.raw_iron_block
#原石ブロックの採掘検知
scoreboard objectives add raw_iron_block_mined_check minecraft.mined:minecraft.raw_iron_block
#原石ブロックの設置検知
scoreboard objectives add raw_iron_block_used_check minecraft.used:minecraft.raw_iron_block
#原石ブロックの設置数検知(クリエ以外で)
scoreboard objectives add raw_iron_block_used dummy
#鉄原石の採掘数検知
scoreboard objectives add iron_mine_count dummy
#原石ブロックの採掘数(計算用)==>原石を設置より、採掘のほうが多いことの確認
scoreboard objectives add raw_iron_block_operate dummy