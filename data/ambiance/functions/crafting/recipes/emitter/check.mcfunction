# require:
#   3 block fall distance
#   items underneath

execute if score #rounding amb.temp >= $emitter_fall amb.conf if entity @s[nbt={data:{MatchingItems:[{Item:{id:"minecraft:obsidian"}}, {Item:{id:"minecraft:diamond"}}]}}] run function ambiance:crafting/recipes/emitter/start_craft
