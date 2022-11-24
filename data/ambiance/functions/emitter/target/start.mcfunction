summon marker ~ ~ ~ {Tags:["ambiance_raycast"]}
say raycast
tp @e[tag=ambiance_raycast, limit=1] @s
execute anchored eyes rotated as @e[tag=ambiance_raycast, limit=1] run tp @e[tag=ambiance_raycast, limit=1] ^ ^ ^ ~ ~
tag @s add ambiance_raycast_owner
scoreboard players set $rep amb.temp 0
execute as @e[tag=ambiance_raycast, limit=1] at @s run function ambiance:emitter/target/run

execute if score $hit amb.temp matches 2 as @e[tag=ambaince_raycast_hit] at @s run particle block minecraft:diamond_block ~ ~ ~ 0 0 0 0 1 force
tag @e[tag=ambaince_raycast_hit] remove ambaince_raycast_hit
tag @s remove ambiance_raycast_owner
kill @e[tag=ambiance_raycast, limit=1]
