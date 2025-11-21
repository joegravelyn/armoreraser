# Create invisible armor stand (cannot modify item held by player)
summon armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,CustomName:"AE"}

# Give item to armor stand and change equippable asset_id
data modify entity @n[type=armor_stand,name=AE] equipment.mainhand set from entity @s SelectedItem

$data modify entity @n[type=armor_stand,name=AE] equipment.mainhand.components.minecraft:equippable set value {slot:$(slot), asset_id:$(asset)}

# Copy item back to player
item replace entity @s weapon.mainhand from entity @n[type=armor_stand,name=AE] weapon.mainhand

# Kill armor stand
kill @n[type=armor_stand,name=AE]