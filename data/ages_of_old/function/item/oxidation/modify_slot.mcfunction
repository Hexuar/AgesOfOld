# Skip Selected Item
$execute if score #SelectedItemSlot ages_of_old.value matches $(slot) run return 0

# Get current item
$data modify storage ages_of_old:oxidation CurrentItem set from entity @s Inventory[{Slot:$(slot)b}]

# Get Values
execute store result score #timestamp ages_of_old.value run data get storage ages_of_old:oxidation CurrentItem.components.minecraft:custom_data.ages_of_old.timestamp
execute store result score #oxidation ages_of_old.value run data get storage ages_of_old:oxidation CurrentItem.components.minecraft:custom_model_data

# Calculate time difference
execute if score #timestamp ages_of_old.value matches 0 run scoreboard players operation #timestamp ages_of_old.value = #current_timestamp ages_of_old.value
scoreboard players operation #delta_time ages_of_old.value = #current_timestamp ages_of_old.value
scoreboard players operation #delta_time ages_of_old.value -= #timestamp ages_of_old.value
scoreboard players operation #delta_time ages_of_old.value /= #20 ages_of_old.value

# Apply oxidation
scoreboard players operation #oxidation ages_of_old.value += #delta_time ages_of_old.value

# Store Data
execute store result storage ages_of_old:oxidation timestamp int 1 run scoreboard players get #current_timestamp ages_of_old.value
execute store result storage ages_of_old:oxidation oxidation int 1 run scoreboard players get #oxidation ages_of_old.value

# Get oxidation state
execute if score #oxidation ages_of_old.value matches 0..1199 run data modify storage ages_of_old:oxidation oxidation_state set from storage ages_of_old:oxidation states[0]
execute if score #oxidation ages_of_old.value matches 1200..2399 run data modify storage ages_of_old:oxidation oxidation_state set from storage ages_of_old:oxidation states[1]
execute if score #oxidation ages_of_old.value matches 2400..3599 run data modify storage ages_of_old:oxidation oxidation_state set from storage ages_of_old:oxidation states[2]
execute if score #oxidation ages_of_old.value matches 3600.. run data modify storage ages_of_old:oxidation oxidation_state set from storage ages_of_old:oxidation states[3]

# Get armor slot
$data modify storage ages_of_old:oxidation armor_slot set from entity @s Inventory[{Slot:$(slot)b}].components.minecraft:equippable.slot

# Modify Item
function ages_of_old:item/oxidation/set_data with storage ages_of_old:oxidation
$execute if items entity @s container.$(slot) *[minecraft:equippable] run function ages_of_old:item/oxidation/set_armor_data with storage ages_of_old:oxidation
