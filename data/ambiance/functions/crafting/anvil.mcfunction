execute store result score #rounding amb.temp run data get entity @s data.FallDistance 10
scoreboard players operation #rounding2 amb.temp = #rounding amb.temp
scoreboard players operation #rounding2 amb.temp %= #10 amb.temp
scoreboard players operation #rounding amb.temp /= #10 amb.temp
data modify storage ambiance:temp render set value '[{"score":{"name":"#rounding","objective":"amb.temp"},"color":"aqua"},{"text":"."},{"score":{"name":"#rounding2","objective":"amb.temp"}},{"text":" blocks"}]'

function ambiance:utility/render_text

execute if score #rounding amb.temp >= $anvil_fall_dist amb.conf run function ambiance:crafting/anvil_popup

particle dust 0.1 0.1 0.1 1 ~0.5 ~ ~ 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~0.5 ~ ~0.5 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~ ~ ~0.5 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~-0.5 ~ ~ 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~-0.5 ~ ~-0.5 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~ ~ ~-0.5 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~0.5 ~ ~-0.5 0 0 0 1 3 force
particle dust 0.1 0.1 0.1 1 ~-0.5 ~ ~0.5 0 0 0 1 3 force

data modify storage ambiance:temp RecipeItems set from entity @s data.MatchingItems
function #ambiance:recipe_execute

scoreboard players set #done amb.temp 0
kill @s
