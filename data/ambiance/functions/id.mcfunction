tag @e[tag=ambiance_emitter] add ambiance_uid
tag @a add ambiance_uid


scoreboard players add @e[tag=ambiance_uid] amb.uid 0
scoreboard players add $next amb.uid 0

execute as @e[tag=ambiance_uid, scores={amb.uid=0}] run function ambiance:new_id
