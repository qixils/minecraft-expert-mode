#> Handle functions
#>> Send Menu On Join
tag @a[scores={expert.leave=0}] add skip_join_menu
scoreboard players add @a expert.leave 0
scoreboard players set @a[scores={expert.leave=0..1},tag=!skip_join_menu] expert.menu 1
tag @a remove skip_join_menu
scoreboard players set @a expert.leave 0
#>> Handle Inputs
execute as @a[scores={expert.menu=1..}] run function expert:menu
execute as @a[scores={expert.health=1..}] run scoreboard players operation Health expert.config = @s expert.health
execute unless score Health expert.config matches 1..20 run scoreboard players set Health expert.config 20
execute as @a run function expert:health
execute as @a[scores={expert.absrptn=1..2}] run scoreboard players operation NoAbsorption expert.config = @s expert.absrptn
scoreboard players reset @a expert.absrptn
execute as @a[scores={expert.regen=1}] run gamerule naturalRegeneration true
execute as @a[scores={expert.regen=2}] run gamerule naturalRegeneration false
scoreboard players reset @a expert.regen
execute as @a[scores={expert.heal=1..}] run effect give @s minecraft:instant_health 3 124 true
scoreboard players reset @a expert.heal

#> Clear triggers
scoreboard players enable @a expert.menu
scoreboard players enable @a expert.health
scoreboard players enable @a expert.absrptn
scoreboard players enable @a expert.regen
scoreboard players enable @a expert.heal

#> Entity Handling
tag @e[type=!player,tag=!hardprocessed] add hardtoprocess
#v max is 2048 but i lowered to save lag. this has nearly identical effects from my testing
execute as @e[tag=hardtoprocess] run attribute @s minecraft:generic.follow_range base set 500
execute as @e[tag=hardtoprocess] run attribute @s minecraft:generic.knockback_resistance base set 1.0
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 1.0
execute as @e[tag=hardtoprocess,type=zombie] run attribute @s minecraft:zombie.spawn_reinforcements base set 1.0
tag @e[tag=hardtoprocess] add hardprocessed
tag @e remove hardtoprocess

#> Clear Absorption
execute if score NoAbsorption expert.config matches 2 run effect clear @a minecraft:absorption

#> Aggressive Lightning
tag @e[type=lightning_bolt,tag=!boltprocessed] add bolttoprocess
execute at @e[tag=bolttoprocess] run function expert:lightning
tag @e[tag=bolttoprocess] add boltprocessed
tag @e remove bolttoprocess
