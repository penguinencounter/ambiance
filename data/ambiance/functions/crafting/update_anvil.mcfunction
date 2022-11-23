execute unless entity @e[type=falling_block, tag=ambiance_anvil_marked, distance=..1] align y run function ambiance:crafting/anvil
tp @s @e[type=falling_block, tag=ambiance_anvil_marked, limit=1, sort=nearest, distance=..1]
data modify entity @s data.FallDistance set from entity @e[type=falling_block, tag=ambiance_anvil_marked, limit=1, sort=nearest, distance=..1] FallDistance
data modify entity @s data.MatchingItems set value []
tag @s add ambiance_wip
execute align y as @e[type=item, distance=..1] run data modify entity @e[tag=ambiance_wip, limit=1, sort=nearest] data.MatchingItems append from entity @s
tag @s remove ambiance_wip
