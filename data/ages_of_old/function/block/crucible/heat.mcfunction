scoreboard players add @s ages_of_old.temperature 1

data modify entity @s Age set value 0


# Sound
execute store result score #play_sound ages_of_old.value run random value 0..100
execute if score #play_sound ages_of_old.value matches ..10 run playsound block.lava.pop block @a ~ ~ ~

# Display particle
execute store result score #display_particle ages_of_old.value run random value 0..100
execute if score #display_particle ages_of_old.value matches ..10 if entity @s[nbt={Item:{id:"minecraft:raw_copper"}}] run particle block{block_state:"raw_copper_block"} ~ ~ ~ 0 0.3 0 1 25 normal @a
execute if score #display_particle ages_of_old.value matches ..50 if entity @s[nbt={Item:{id:"minecraft:raw_iron"}}] run particle block{block_state:"raw_iron_block"} ~ ~ ~ 0 0.3 0 1 2 normal @a
execute if score #display_particle ages_of_old.value matches ..50 if entity @s[nbt={Item:{id:"minecraft:raw_gold"}}] run particle block{block_state:"raw_gold_block"} ~ ~ ~ 0 0.3 0 1 2 normal @a


# Output
execute if items entity @s container.0 minecraft:raw_copper if score @s ages_of_old.temperature >= #copper_melting_temperature ages_of_old.temperature run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if items entity @s container.0 minecraft:raw_iron if score @s ages_of_old.temperature >= #iron_melting_temperature ages_of_old.temperature run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if items entity @s container.0 minecraft:raw_gold if score @s ages_of_old.temperature >= #gold_melting_temperature ages_of_old.temperature run data modify entity @s Item.id set value "minecraft:gold_ingot"