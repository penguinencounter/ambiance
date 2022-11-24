summon marker ~ ~ ~ {Tags:["ambiance_raycast"]}
say raycast
tp @e[tag=ambiance_raycast, limit=1] @s
execute anchored eyes rotated as @e[tag=ambiance_raycast, limit=1] run tp @e[tag=ambiance_raycast, limit=1] ^ ^ ^ ~ ~
tag @s add ambiance_raycast_owner
scoreboard players set $rep amb.temp 0
execute as @e[tag=ambiance_raycast, limit=1] at @s run function ambiance:emitter/target/run
tag @s remove ambiance_raycast_owner
execute at @e[tag=ambiance_raycast, limit=1] if score $hit amb.temp matches 1 run setblock ~ ~ ~ emerald_block
kill @e[tag=ambiance_raycast, limit=1]
