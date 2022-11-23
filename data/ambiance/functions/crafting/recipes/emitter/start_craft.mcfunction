# Recipe: 1 obsidian, 1 diamond
say crafting operation
data modify storage ambiance:temp CraftingMatching set value []
scoreboard players set $in1 amb.temp 0
scoreboard players set $in2 amb.temp 0
function ambiance:crafting/recipes/emitter/filter_ingredients
scoreboard players operation $in1 amb.temp < $in2 amb.temp
function ambiance:crafting/recipes/emitter/craft
