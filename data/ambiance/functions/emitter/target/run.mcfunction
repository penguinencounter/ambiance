execute if score $rep amb.temp matches 20.. run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add $rep amb.temp 1
execute if score $rep amb.temp >= $max_conf_distance amb.conf run scoreboard players set $hit amb.temp 0
execute unless block ~ ~ ~ #ambiance:airs run scoreboard players set $hit amb.temp 1
execute as @e[tag=ambiance_emitter,limit=1,distance=..1] run scoreboard players set $hit amb.temp 2
execute as @e[tag=ambiance_emitter,limit=1,distance=..1] run tag @s add ambaince_raycast_hit
execute unless score $rep amb.temp >= $max_conf_distance amb.conf unless entity @e[tag=ambiance_emitter,limit=1,distance=..1] if block ~ ~ ~ #ambiance:airs positioned ^ ^ ^0.1 run function ambiance:emitter/target/run
