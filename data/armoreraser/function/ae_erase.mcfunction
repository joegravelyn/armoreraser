
execute if items entity @s weapon.mainhand #minecraft:chest_armor run data merge storage armoreraser:data {slot:chest, asset:blank}
execute if items entity @s weapon.mainhand #minecraft:head_armor run data merge storage armoreraser:data {slot:head, asset:blank}
execute if items entity @s weapon.mainhand #minecraft:foot_armor run data merge storage armoreraser:data {slot:feet, asset:blank}
execute if items entity @s weapon.mainhand #minecraft:leg_armor run data merge storage armoreraser:data {slot:legs, asset:blank}

execute if items entity @s weapon.mainhand #armoreraser:ae_armor run return run function armoreraser:change_armor_asset with storage armoreraser:data
execute unless items entity @s weapon.mainhand #armoreraser:ae_armor run tellraw @s [{"text": "You are not holding player armor","color":"red"}]
