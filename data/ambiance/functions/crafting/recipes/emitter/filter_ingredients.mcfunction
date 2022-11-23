data modify entity @s data.Work set from storage ambiance:temp RecipeItems[0]
scoreboard players set $add1 amb.temp 0
scoreboard players set $add2 amb.temp 0
execute if entity @s[nbt={data:{Work:{Item:{id:"minecraft:obsidian"}}}}] store result score $add1 amb.temp run data get entity @s data.Work.Item.Count
execute if entity @s[nbt={data:{Work:{Item:{id:"minecraft:diamond"}}}}] store result score $add2 amb.temp run data get entity @s data.Work.Item.Count
scoreboard players operation $in1 amb.temp += $add1 amb.temp
scoreboard players operation $in2 amb.temp += $add2 amb.temp
data remove storage ambiance:temp RecipeItems[0]
execute store result score $remaining amb.temp run data get storage ambiance:temp RecipeItems
execute if score $remaining amb.temp matches 1.. run function ambiance:crafting/recipes/emitter/filter_ingredients
