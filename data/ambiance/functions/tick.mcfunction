function ambiance:crafting/detect_anvil
execute as @e[type=marker, tag=ambiance_anvil_marker] at @s run function ambiance:crafting/update_anvil
execute as @e[scores={amb.destruct=1..}] run scoreboard players remove @s amb.destruct 1
execute as @e[scores={amb.destruct=0}] run tag @s add ambiance_to_destroy
execute as @e[tag=ambiance_to_destroy] run scoreboard players reset @s amb.destruct
execute as @e[tag=ambiance_to_destroy] run kill @s

scoreboard players add @a amb.menuState 0
scoreboard players add @a amb.menu 0

execute as @e[tag=ambiance_emitter_spawn] at @s run function ambiance:emitter/build

scoreboard players enable @a amb.menu

execute as @a unless score @s amb.menu matches 0 at @s run function ambiance:menu_dispatch
scoreboard players set @a amb.menu 0
