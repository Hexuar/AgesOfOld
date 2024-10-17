data modify storage ages_of_old:oxidation slots append from storage ages_of_old:oxidation slots[0]
data remove storage ages_of_old:oxidation slots[0]
data modify storage ages_of_old:oxidation slot set from storage ages_of_old:oxidation slots[0]

function ages_of_old:item/oxidation/modify_slot with storage ages_of_old:oxidation

scoreboard players add #index ages_of_old.value 1
execute if score #index ages_of_old.value < #length ages_of_old.value run function ages_of_old:item/oxidation/loop