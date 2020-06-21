#for x in range(1, 21): print('execute if score @s expert.health matches {0} run attribute @s minecraft:generic.max_health base set {0}'.format(x))
execute if score Health expert.config matches 1 run attribute @s minecraft:generic.max_health base set 1
execute if score Health expert.config matches 2 run attribute @s minecraft:generic.max_health base set 2
execute if score Health expert.config matches 3 run attribute @s minecraft:generic.max_health base set 3
execute if score Health expert.config matches 4 run attribute @s minecraft:generic.max_health base set 4
execute if score Health expert.config matches 5 run attribute @s minecraft:generic.max_health base set 5
execute if score Health expert.config matches 6 run attribute @s minecraft:generic.max_health base set 6
execute if score Health expert.config matches 7 run attribute @s minecraft:generic.max_health base set 7
execute if score Health expert.config matches 8 run attribute @s minecraft:generic.max_health base set 8
execute if score Health expert.config matches 9 run attribute @s minecraft:generic.max_health base set 9
execute if score Health expert.config matches 10 run attribute @s minecraft:generic.max_health base set 10
execute if score Health expert.config matches 11 run attribute @s minecraft:generic.max_health base set 11
execute if score Health expert.config matches 12 run attribute @s minecraft:generic.max_health base set 12
execute if score Health expert.config matches 13 run attribute @s minecraft:generic.max_health base set 13
execute if score Health expert.config matches 14 run attribute @s minecraft:generic.max_health base set 14
execute if score Health expert.config matches 15 run attribute @s minecraft:generic.max_health base set 15
execute if score Health expert.config matches 16 run attribute @s minecraft:generic.max_health base set 16
execute if score Health expert.config matches 17 run attribute @s minecraft:generic.max_health base set 17
execute if score Health expert.config matches 18 run attribute @s minecraft:generic.max_health base set 18
execute if score Health expert.config matches 19 run attribute @s minecraft:generic.max_health base set 19
execute if score Health expert.config matches 20 run attribute @s minecraft:generic.max_health base set 20
# execute unless score Health expert.config matches 1..20 run tellraw @a {"text":"Max health must be within range 1-20 half-hearts!","color":"red","italic":true}

execute if score @s expert._phealth > Health expert.config unless score NoAbsorption expert.config matches 1 run effect give @s minecraft:regeneration 2 1 true
execute if score @s expert._phealth > Health expert.config unless score NoAbsorption expert.config matches 1 run effect give @s minecraft:poison 1 1 true

scoreboard players reset @s expert.health
