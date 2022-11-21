execute as @e[type=minecraft:falling_block, tag=!ambiance_anvil_marked, nbt={BlockState:{Name:"minecraft:anvil"}}] at @s run function ambiance:crafting/mark
execute as @e[type=minecraft:falling_block, tag=!ambiance_anvil_marked, nbt={BlockState:{Name:"minecraft:damaged_anvil"}}] at @s run function ambiance:crafting/mark
execute as @e[type=minecraft:falling_block, tag=!ambiance_anvil_marked, nbt={BlockState:{Name:"minecraft:chipped_anvil"}}] at @s run function ambiance:crafting/mark
