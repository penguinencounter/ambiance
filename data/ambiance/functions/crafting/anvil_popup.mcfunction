summon armor_stand ~ ~1 ~ {CustomNameVisible:1b,Silent:1b,Invulnerable:1b,Marker:1b,Small:1b,Invisible:1b,CustomName:'{"text":""}',Tags:["ambiance_text", "ambiance_text_ini"], NoGravity:1b}
execute as @e[tag=ambiance_text_ini] run scoreboard players set @s amb.destruct 10
data modify entity @e[tag=ambiance_text_ini, limit=1] CustomName set from storage ambiance:temp render_result
tag @e[tag=ambiance_text_ini] remove ambiance_text_ini
