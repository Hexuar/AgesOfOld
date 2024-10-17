data modify storage ages_of_old:oxidation slots set value []
data modify storage ages_of_old:oxidation slots append from entity @s Inventory[{components:{"minecraft:custom_data":{ages_of_old:{oxidizable:1b}}}}].Slot

execute store result score #length ages_of_old.value run data get storage ages_of_old:oxidation slots
scoreboard players set #index ages_of_old.value 0

execute store result score #current_timestamp ages_of_old.value run time query gametime
execute store result score #SelectedItemSlot ages_of_old.value run data get entity @s SelectedItemSlot

function ages_of_old:item/oxidation/loop