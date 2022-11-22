scoreboard objectives add amb.destruct dummy
scoreboard objectives add amb.temp dummy
scoreboard objectives add amb.conf dummy
execute unless score $anvil_fall_dist amb.conf matches -2147483648..2147483647 run scoreboard players set $anvil_fall_dist amb.conf 3
execute unless score $emitter_fall amb.conf matches -2147483648..2147483647 run scoreboard players set $emitter_fall amb.conf 3

scoreboard players set #10 amb.temp 10
forceload add 87532 87532
setblock 87532 0 87532 oak_sign
