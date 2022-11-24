# 0 - down
# 1 - up
# 2 - north
# 3 - south
# 4 - west
# 5 - east

execute store result score $direction amb.temp run data get entity @s Facing
# TODO delete me
particle dust 1 0 1 1 ~ ~ ~ 0 0 0 1 4 force
execute if score $direction amb.temp matches 0 rotated 0 90 run function ambiance:emitter/build_model
execute if score $direction amb.temp matches 1 rotated 0 -90 run function ambiance:emitter/build_model
execute if score $direction amb.temp matches 2 rotated 180 0 run function ambiance:emitter/build_model
execute if score $direction amb.temp matches 3 rotated 0 0 run function ambiance:emitter/build_model
execute if score $direction amb.temp matches 4 rotated 90 0 run function ambiance:emitter/build_model
execute if score $direction amb.temp matches 5 rotated -90 0 run function ambiance:emitter/build_model
