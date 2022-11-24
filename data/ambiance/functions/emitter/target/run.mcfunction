particle dust 0.5 0 1 0.5 ~ ~ ~ 0 0 0 1 1 force
scoreboard players add $rep amb.temp 1
execute if score $rep amb.temp >= $max_conf_distance amb.conf run scoreboard players set $hit amb.temp 0
execute unless block ~ ~ ~ #ambiance:airs run scoreboard players set $hit amb.temp 1
execute unless block ~ ~ ~ #ambiance:airs run tp @s ~ ~ ~
execute unless score $rep amb.temp >= $max_conf_distance amb.conf if block ~ ~ ~ #ambiance:airs positioned ^ ^ ^0.1 run function ambiance:emitter/target/run
