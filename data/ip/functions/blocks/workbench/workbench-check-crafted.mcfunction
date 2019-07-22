# Only "craft" the item if the player has removed it from the output
execute unless block -~ ~ ~ minecraft:chest{Items:[{Slot:16b}]} run function ip:blocks/workbench/workbench-craft-item
