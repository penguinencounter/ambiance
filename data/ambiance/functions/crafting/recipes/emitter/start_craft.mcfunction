# Recipe: 1 obsidian, 1 diamond
data modify storage ambiance:temp CraftingMatching set value []
scoreboard players set $in1 amb.temp 0
scoreboard players set $in2 amb.temp 0
function ambiance:crafting/recipes/emitter/filter_ingredients
kill @e[type=item, distance=..1]
scoreboard players operation $in1 amb.temp < $in2 amb.temp
function ambiance:crafting/recipes/emitter/craft
