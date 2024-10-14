$summon item_display ~ ~ ~ {Tags:$(Tags),item:{"id":"minecraft:command_block",components:{"minecraft:item_model":"$(item_model)","minecraft:custom_data":{loot_table:"$(loot_table)"}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.01f,1.01f,1.01f]}}
$setblock ~ ~ ~ $(block)
$playsound $(sound) block @a ~ ~ ~

kill @s