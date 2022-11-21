scoreboard players add $anvil_fall_dist amb.conf 5
execute if score $anvil_fall_dist amb.conf matches ..0 run scoreboard players set $anvil_fall_dist amb.conf 0
function ambiance:_admin/config
