
# Store the item counts for all of the recipe inputs
execute store result score input1 WorkbenchStatus run data get block ~ ~ ~ Items[2].Count
execute store result score input2 WorkbenchStatus run data get block ~ ~ ~ Items[3].Count
execute store result score input3 WorkbenchStatus run data get block ~ ~ ~ Items[4].Count
execute store result score input4 WorkbenchStatus run data get block ~ ~ ~ Items[11].Count
execute store result score input5 WorkbenchStatus run data get block ~ ~ ~ Items[12].Count
execute store result score input6 WorkbenchStatus run data get block ~ ~ ~ Items[13].Count
# Since the crafted item has been removed from the workbench, the Items array
# is restructured and everything about 16 is moved down 1.
execute store result score input7 WorkbenchStatus run data get block ~ ~ ~ Items[19].Count
execute store result score input8 WorkbenchStatus run data get block ~ ~ ~ Items[20].Count
execute store result score input9 WorkbenchStatus run data get block ~ ~ ~ Items[21].Count

# Reduce the item count by one for each item
scoreboard players operation input1 WorkbenchStatus -= One Constants
scoreboard players operation input2 WorkbenchStatus -= One Constants
scoreboard players operation input3 WorkbenchStatus -= One Constants
scoreboard players operation input4 WorkbenchStatus -= One Constants
scoreboard players operation input5 WorkbenchStatus -= One Constants
scoreboard players operation input6 WorkbenchStatus -= One Constants
scoreboard players operation input7 WorkbenchStatus -= One Constants
scoreboard players operation input8 WorkbenchStatus -= One Constants
scoreboard players operation input9 WorkbenchStatus -= One Constants

# Update each item stack with the correct Count
# Run them backwards to prevent item disappearances from messing up the
# array indices
execute store result block ~ ~ ~ Items[21].Count byte 1 run scoreboard players get input9 WorkbenchStatus
execute store result block ~ ~ ~ Items[20].Count byte 1 run scoreboard players get input8 WorkbenchStatus
execute store result block ~ ~ ~ Items[19].Count byte 1 run scoreboard players get input7 WorkbenchStatus
execute store result block ~ ~ ~ Items[13].Count byte 1 run scoreboard players get input6 WorkbenchStatus
execute store result block ~ ~ ~ Items[12].Count byte 1 run scoreboard players get input5 WorkbenchStatus
execute store result block ~ ~ ~ Items[11].Count byte 1 run scoreboard players get input4 WorkbenchStatus
execute store result block ~ ~ ~ Items[4].Count byte 1 run scoreboard players get input3 WorkbenchStatus
execute store result block ~ ~ ~ Items[3].Count byte 1 run scoreboard players get input2 WorkbenchStatus
execute store result block ~ ~ ~ Items[2].Count byte 1 run scoreboard players get input1 WorkbenchStatus
