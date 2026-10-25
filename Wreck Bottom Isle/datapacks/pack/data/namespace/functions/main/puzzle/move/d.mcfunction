#execute as @e[tag=pp] at @s if block ~ ~ ~2 air positioned ~-0.5 ~ ~-1.5 if entity @a[dx=0,dy=1,dz=0] run
execute at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 1 1 force
execute at @s run playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1 0
execute at @s run fill ~-1 ~1 ~-1 ~1 ~0 ~1 air replace minecraft:stone_brick_wall
execute at @s run teleport @s ~ ~ ~3
execute at @s run fill ~-1 ~1 ~-1 ~1 ~0 ~1 stone_brick_wall replace minecraft:air


