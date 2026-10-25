#execute as @e[tag=pp] at @s if block ~ ~ ~2 air positioned ~-0.5 ~ ~-1.5 if entity @a[dx=0,dy=1,dz=0] run
execute at @s if block ~ ~-1 ~ air unless block ~ ~-3 ~ air run particle minecraft:explosion_emitter ~ ~-2 ~ 1 1 1 1 1 force
execute at @s if block ~ ~-1 ~ air unless block ~ ~-3 ~ air run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 5 0
execute at @s run fill ~-1 ~1 ~-1 ~1 ~0 ~1 air replace minecraft:stone_brick_wall
execute at @s run teleport @s ~ ~-2 ~
execute at @s run fill ~-1 ~1 ~-1 ~1 ~0 ~1 stone_brick_wall replace minecraft:air


