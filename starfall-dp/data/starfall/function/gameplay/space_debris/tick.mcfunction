execute unless block ~ ~-0.1 ~ #air run function starfall:gameplay/space_debris/landing

execute if entity @s[tag=starfall.entity.debris.landed] run return fail
tp @s ~ ~-0.25 ~ ~ ~
particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 1 force @a
playsound starfall:gameplay.fallen_star.fall