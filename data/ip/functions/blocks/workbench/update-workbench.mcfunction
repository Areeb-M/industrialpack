#execute if block ~ ~ ~ minecraft:chest{Items:[{Slot:12b,id:"minecraft:furnace"},{Slot:2b,id:"minecraft:iron_ingot"},{Slot:3b,id:"minecraft:iron_ingot"},{Slot:4b,id:"minecraft:iron_ingot"},{Slot:11b,id:"minecraft:iron_ingot"},{Slot:13b,id:"minecraft:iron_ingot"},{Slot:20b,id:"minecraft:iron_ingot"},{Slot:21b,id:"minecraft:iron_ingot"},{Slot:22b,id:"minecraft:iron_ingot"},{Slot:16b,id:"minecraft:glass_pane"}]} run replaceitem block ~ ~ ~ container.16 minecraft:bat_spawn_egg{display:{Name:"{\"text\":\"Generator\",\"color\":\"white\",\"italic\":false}"},EntityTag:{id:"minecraft:armor_stand",CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Invisible:0b,PersistenceRequired:1b,Tags:["ip","spawn-generator"]}} 1
#execute unless block ~ ~ ~ minecraft:chest{Items:[{Slot:16b}]} run function ip:spawn-workbench

# Status Definitions
# One: Recipe is fulfilled, item may or may not have been crafted
# Zero: No recipe is fulfilled

# Check if the player has crafted the item
execute if score @s WorkbenchStatus = One Constants run function ip:workbench-check-crafted

# Reset the workbench's status and output
scoreboard players set @s WorkbenchStatus 0
replaceitem block ~ ~ ~ container.16 minecraft:air

# Check whether recipes are fulfilled
execute run function ip:recipes/generator/generator1
