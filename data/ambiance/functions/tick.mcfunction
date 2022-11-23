function ambiance:crafting/detect_anvil
execute as @e[type=marker, tag=ambiance_anvil_marker] at @s run function ambiance:crafting/update_anvil
execute as @e[scores={amb.destruct=1..}] run scoreboard players remove @s amb.destruct 1
execute as @e[scores={amb.destruct=0}] run tag @s add ambiance_to_destroy
execute as @e[tag=ambiance_to_destroy] run scoreboard players reset @s amb.destruct
execute as @e[tag=ambiance_to_destroy] run kill @s

scoreboard players enable @a amb.menu
