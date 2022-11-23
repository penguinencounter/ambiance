summon item ~ ~ ~ {Item:{id:"minecraft:item_frame",Count:1b,tag:{display:{Name:'{"text":"Particle Emitter"}',Lore:['{"text":"Emits configurable particles.","color":"reset","italic":false}','{"text":"\\"asthetics++\\"","color":"light_purple","italic":true}']},EntityTag:{Invulnerable:1b,Invisible:0b}}}}
scoreboard players remove $in1 amb.temp 1
execute if score $in1 amb.temp matches 1.. run function ambiance:crafting/recipes/emitter/craft
