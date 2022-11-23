# lightest ■
# light
# normal
# dark
# darkest

import colorsys
import json
from rich import print as rprint

hue_steps = 45
h_step = float(360 / hue_steps)
assert h_step.is_integer()
h_step = int(h_step)
sats = [n/8 for n in range(8)] + [1] + [1 for _ in range(8)]

# reverse
vals = reversed(sats)

rgbstring = lambda r, g, b: f"#{int(r):02x}{int(g):02x}{int(b):02x}"

mapping = {}

file_header = """# GENERATED color.py
tellraw @s ["", {"text": "< Back", "clickEvent": {"action": "run_command", "value": "/trigger amb.menu set -1"}, "hoverEvent": {"action": "show_text", "value": "Return to the previous screen"}, "color": "red"}, "  ", {"text": "Color picker", "color": "gold", "bold": true}]
"""
result = file_header
file_footer = """tellraw @s ""
tellraw @s [{"text": "Press ", "color": "gray", "italic": true}, {"keybind": "key.chat", "color": "green"}, {"text": " to see menu"}]
"""
line_start = 'tellraw @s ["", {"text": "$percent $type ", "color": "gray", "italic": true}'
line_end = ']\n'

template = ',{"text": "■", "color": "$color", "clickEvent": {"action": "run_command", "value": "/trigger amb.menu set $id"}, "hoverEvent": {"action": "show_text", "value": ["", {"text": "■ ", "color": "$color"}, {"text": "$color", "color": "$color_filter"}, "\\n", {"text": "$id", "color": "dark_gray", "italic": true}]}}'

ctr = 1
for sat, val in zip(sats, vals):
    if val != 1:
        result += line_start.replace("$percent", f"{val:.1%}".rjust(6, '0')).replace("$type", "V")
    elif sat != 1:
        result += line_start.replace("$percent", f"{sat:.1%}".rjust(6, '0')).replace("$type", "S")
    else:
        result += line_start.replace("$percent", "100.0%".rjust(6, '0')).replace("$type", "-")
    for hue in range(0, 360, h_step):
        r, g, b = colorsys.hsv_to_rgb(hue/360, sat, val)
        fr, fg, fb = colorsys.hsv_to_rgb(hue/360, min(sat+0.25, 1), min(val+0.25, 1))
        hex_col = rgbstring(r*255, g*255, b*255)

        if hex_col not in mapping:
            mapping[hex_col] = ctr
            ctr += 1
        col_id = mapping[hex_col]

        f_hex_col = rgbstring(fr*255, fg*255, fb*255)
        rprint(f"[{hex_col}]■", end="")
        result += template.replace('$color_filter', f_hex_col).replace('$color', hex_col).replace('$id', str(col_id))
    r, g, b = colorsys.hsv_to_rgb(0.5, sat, val)
    hex_col = rgbstring(r*255, g*255, b*255)
    rprint(f" [{hex_col}]{hex_col} (S,V {hue:.2f}, {sat:.2f})")
    result += line_end
result += file_footer

with open("color_selector.mcfunction", "w", encoding="utf8") as f:
    f.write(result)

with open("color_map.json", "w", encoding="utf8") as f:
    f.write(json.dumps(mapping, indent=4))
