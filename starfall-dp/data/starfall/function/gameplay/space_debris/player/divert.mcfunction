scoreboard players reset @s starfall.debris_timer
scoreboard players reset #starfall.random starfall.dummy

execute store result storage starfall:storage debris.x short 16 run random roll 1..8
execute store result storage starfall:storage debris.z short 16 run random roll 1..8

execute store result score #starfall.random starfall.dummy run random value 1..5
execute if score #starfall.random starfall.dummy matches 1..5 run return run function starfall:gameplay/space_debris/player/summon/fallen_star with storage starfall:storage debris
#execute if score #starfall.random starfall.dummy matches 1..5 run return run function starfall:gameplay/space_debris/player/summon/star_shower with storage starfall:storage debris
#execute if score #starfall.random starfall.dummy matches 1..5 run return run function starfall:gameplay/space_debris/player/summon/comet with storage starfall:storage debris