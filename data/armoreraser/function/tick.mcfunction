# Controls everything to do with datapack_name

scoreboard players enable @a ae_erase
scoreboard players enable @a ae_unerase

execute as @a[scores={ae_erase=1..}] at @a[scores={ae_erase=1..}] run function armoreraser:ae_erase
execute as @a[scores={ae_unerase=1..}] at @a[scores={ae_unerase=1..}] run function armoreraser:ae_unerase

# Reset trigger
scoreboard players set @a ae_erase 0
scoreboard players set @a ae_unerase 0