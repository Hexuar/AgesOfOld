scoreboard players reset #tick20 ages_of_old.value

# Oxidisation
execute as @a if items entity @s container.* *[minecraft:custom_data~{ages_of_old:{oxidizable:true}}] run function ages_of_old:item/oxidation/update