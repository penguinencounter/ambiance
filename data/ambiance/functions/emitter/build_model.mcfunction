summon armor_stand ^ ^ ^-0.2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["ambiance_building_model", "ambiance_emitter_model"],ArmorItems:[{},{},{},{id:"minecraft:obsidian",Count:1b}]}
summon armor_stand ^ ^ ^ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["ambiance_building_model", "ambiance_building_model_smol", "ambiance_emitter_model"],ArmorItems:[{},{},{},{id:"minecraft:diamond_block",Count:1b}]}

execute as @e[tag=ambiance_building_model] at @s run tp @s ~ ~-1.7 ~
execute as @e[tag=ambiance_building_model_smol] at @s run tp @s ~ ~.8 ~

tag @e[tag=ambiance_building_model] remove ambiance_building_model
tag @e[tag=ambiance_building_model_smol] remove ambiance_building_model_smol

summon marker ~ ~ ~ {Tags: ["ambiance_emitter"], data: {Emitter: {CycleTicks: 20, CycleUnits: 0b, Offset: [0d, 0d, 0d], Count: 0, Particle: {id: 0}, Spread: [0d, 0d, 0d]}}}

kill @s
# done
