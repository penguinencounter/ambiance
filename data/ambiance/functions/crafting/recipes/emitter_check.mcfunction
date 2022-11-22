# require:
#   3 block fall distance
#   items underneath

execute if score #rounding amb.temp >= $emitter_fall amb.conf run function ambiance:crafting/recipes/emitter
