
# Call @e to find all blocks that need updating IMPLEMENT LATER
# Uses @e only once to minimize lag
# execute as @e[tag=ip] at @s run function ip:process-update

execute as @e[tag=spawn-workbench] at @s run function ip:spawn-workbench
execute as @e[tag=update-workbench] at @s run function ip:update-workbench
