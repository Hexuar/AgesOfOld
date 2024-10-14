execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{black:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/black
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{blue:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/blue
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{brown:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/brown
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{cyan:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/cyan
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{gray:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/gray
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{green:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/green
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{light_blue:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/light_blue
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{light_gray:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/light_gray
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{lime:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/lime
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{magenta:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/magenta
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{orange:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/orange
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{pink:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/pink
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{purple:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/purple
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{red:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/red
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{white:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/white
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{ages_of_old:{yellow:1b}}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/yellow

kill @s
kill @e[type=item,sort=furthest,nbt={Item:{id:"minecraft:armor_stand"}},distance=..2,limit=1]