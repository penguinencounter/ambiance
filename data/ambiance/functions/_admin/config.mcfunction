tellraw @s "== Screen page =="
tellraw @s ""
tellraw @s {"text": "_ Ambiance Configuration", "color": "gold"}
execute if score $anvil_fall_dist amb.conf matches 5.. run tellraw @s [{"text": "# Minimum fall distance for popup ", "color": "aqua"}, {"text": "-5", "color": "red", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_sub_5"}, "bold": true}, {"text": " "}, {"text": "-1", "color": "red", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_sub_1"}, "bold": true}, {"text": " "}, {"score": {"name": "$anvil_fall_dist", "objective": "amb.conf"}, "bold": true}, {"text": " "}, {"text": "+1", "color": "green", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_add_1"}, "bold": true}, {"text": " ", "color": "green"}, {"text": "+5", "color": "green", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_add_5"}, "bold": true}, {"text": " "}, {"text": "←", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "Revert to default", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_rev"}}]
execute if score $anvil_fall_dist amb.conf matches 1..4 run tellraw @s [{"text": "# Minimum fall distance for popup ", "color": "aqua"}, {"text": "-", "color": "red", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_sub_5"}, "bold": true},{"score": {"name": "$anvil_fall_dist", "objective": "amb.conf"}, "color": "red", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_sub_5"}, "bold": true}, {"text": " "}, {"text": "-1", "color": "red", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_sub_1"}, "bold": true}, {"text": " "}, {"score": {"name": "$anvil_fall_dist", "objective": "amb.conf"}, "bold": true}, {"text": " "}, {"text": "+1", "color": "green", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_add_1"}, "bold": true}, {"text": " ", "color": "green"}, {"text": "+5", "color": "green", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_add_5"}, "bold": true}, {"text": " "}, {"text": "←", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "Revert to default", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_rev"}}]
execute if score $anvil_fall_dist amb.conf matches 0 run tellraw @s [{"text": "# Minimum fall distance for popup ", "color": "aqua"}, {"text": "-5", "color": "gray", "bold": true}, {"text": " "}, {"text": "-1", "color": "gray", "bold": true}, {"text": " "}, {"score": {"name": "$anvil_fall_dist", "objective": "amb.conf"}, "bold": true}, {"text": " "}, {"text": "+1", "color": "green", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_add_1"}, "bold": true}, {"text": " ", "color": "green"}, {"text": "+5", "color": "green", "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_add_5"}, "bold": true}, {"text": " "}, {"text": "←", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "Revert to default", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/function ambiance:menu/anvil_fall_dist_rev"}}]
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s ""
tellraw @s [{"text": "Press ", "color": "gray", "italic": true}, {"keybind": "key.chat", "color": "green"}, {"text": " to see menu"}]
