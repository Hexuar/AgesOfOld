execute at @s[nbt={Item:{tag:{ages_of_old:{black:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/black
execute at @s[nbt={Item:{tag:{ages_of_old:{blue:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/blue
execute at @s[nbt={Item:{tag:{ages_of_old:{brown:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/brown
execute at @s[nbt={Item:{tag:{ages_of_old:{cyan:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/cyan
execute at @s[nbt={Item:{tag:{ages_of_old:{gray:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/gray
execute at @s[nbt={Item:{tag:{ages_of_old:{green:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/green
execute at @s[nbt={Item:{tag:{ages_of_old:{light_blue:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/light_blue
execute at @s[nbt={Item:{tag:{ages_of_old:{light_gray:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/light_gray
execute at @s[nbt={Item:{tag:{ages_of_old:{lime:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/lime
execute at @s[nbt={Item:{tag:{ages_of_old:{magenta:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/magenta
execute at @s[nbt={Item:{tag:{ages_of_old:{orange:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/orange
execute at @s[nbt={Item:{tag:{ages_of_old:{pink:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/pink
execute at @s[nbt={Item:{tag:{ages_of_old:{purple:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/purple
execute at @s[nbt={Item:{tag:{ages_of_old:{red:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/red
execute at @s[nbt={Item:{tag:{ages_of_old:{white:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/white
execute at @s[nbt={Item:{tag:{ages_of_old:{yellow:1b}}}}] run loot spawn ~ ~ ~ loot ages_of_old:tents/yellow

kill @s
kill @e[tag=!global.ignore,tag=!global.ignore.kill,type=item,sort=nearest,nbt={Item:{id:"minecraft:armor_stand"}},limit=1,nbt=!{Item:{tag:{ages_of_old:{tent:1b}}}}]