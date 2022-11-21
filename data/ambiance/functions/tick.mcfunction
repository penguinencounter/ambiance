function ambiance:crafting/detect_anvil
function ambiance:crafting/update_anvil
execute as @e[scores={amb.destruct=1..}] run scoreboard players remove @s amb.destruct 1
execute as @e[scores={amb.destruct=0}] run tag @s add ambiance_to_destroy
execute as @e[tag=ambiance_to_destroy] run scoreboard players reset @s amb.destruct
execute as @e[tag=ambiance_to_destroy] run kill @s
