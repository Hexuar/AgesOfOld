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


# Modify Item
function ages_of_old:item/oxidation/set_data with storage ages_of_old:oxidation