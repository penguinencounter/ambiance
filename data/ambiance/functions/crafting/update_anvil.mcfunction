execute as @e[type=marker, tag=ambiance_anvil_marker] at @s unless entity @e[type=falling_block, tag=ambiance_anvil_marked, distance=..1] align y run function ambiance:crafting/anvil
execute as @e[type=marker, tag=ambiance_anvil_marker] at @s run tp @s @e[type=falling_block, tag=ambiance_anvil_marked, limit=1, sort=nearest, distance=..1]
execute as @e[type=marker, tag=ambiance_anvil_marker] at @s run data modify entity @s FallDistance set from entity @e[type=falling_block, tag=ambiance_anvil_marked, limit=1, sort=nearest, distance=..1] FallDistance
