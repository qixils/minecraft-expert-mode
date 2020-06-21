#> Add triggers
scoreboard objectives add expert.health trigger
scoreboard objectives add expert.menu trigger
scoreboard objectives add expert.absrptn trigger
scoreboard objectives add expert.regen trigger

scoreboard objectives add expert.config dummy
scoreboard players add Health expert.config 0
scoreboard players add NoAbsorption expert.config 0

#>> send menu on join
scoreboard objectives add expert.leave minecraft.custom:minecraft.leave_game
#>> add deaths objective
scoreboard objectives add deaths deathCount {"text":"Deaths","color":"dark_red"}
scoreboard objectives setdisplay list deaths
#>> player health for lowering player health
scoreboard objectives add expert._phealth health

#> Display menu to all
scoreboard players set @a expert.menu 1

difficulty hard
