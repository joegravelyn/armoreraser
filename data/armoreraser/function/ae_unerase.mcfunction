
execute if items entity @s weapon.mainhand #minecraft:chest_armor run data merge storage armoreraser:data {slot:chest}
execute if items entity @s weapon.mainhand #minecraft:head_armor run data merge storage armoreraser:data {slot:head}
execute if items entity @s weapon.mainhand #minecraft:foot_armor run data merge storage armoreraser:data {slot:feet}
execute if items entity @s weapon.mainhand #minecraft:leg_armor run data merge storage armoreraser:data {slot:legs}

execute if items entity @s weapon.mainhand #armoreraser:ae_leather run data merge storage armoreraser:data {asset:leather}
execute if items entity @s weapon.mainhand #armoreraser:ae_copper run data merge storage armoreraser:data {asset:copper}
execute if items entity @s weapon.mainhand #armoreraser:ae_gold run data merge storage armoreraser:data {asset:gold}
execute if items entity @s weapon.mainhand #armoreraser:ae_chainmail run data merge storage armoreraser:data {asset:chainmail}
execute if items entity @s weapon.mainhand #armoreraser:ae_iron run data merge storage armoreraser:data {asset:iron}
execute if items entity @s weapon.mainhand #armoreraser:ae_diamond run data merge storage armoreraser:data {asset:diamond}
execute if items entity @s weapon.mainhand #armoreraser:ae_netherite run data merge storage armoreraser:data {asset:netherite}
execute if items entity @s weapon.mainhand #armoreraser:ae_turtle run data merge storage armoreraser:data {asset:turtle_scute}

execute if items entity @s weapon.mainhand #armoreraser:ae_armor run return run function armoreraser:change_armor_asset with storage armoreraser:data
execute unless items entity @s weapon.mainhand #armoreraser:ae_armor run tellraw @s [{"text": "You are not holding player armor","color":"red"}]
