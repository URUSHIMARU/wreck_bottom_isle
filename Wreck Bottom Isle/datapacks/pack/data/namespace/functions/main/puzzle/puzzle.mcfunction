
#+x a
execute as @e[tag=pp] at @s if block ~-2 ~ ~ air positioned ~0.5 ~ ~-0.5 if entity @a[dx=0,dy=1,dz=0] run function namespace:main/puzzle/move/a
#-x b
execute as @e[tag=pp] at @s if block ~2 ~ ~ air positioned ~-1.5 ~ ~-0.5 if entity @a[dx=0,dy=1,dz=0] run function namespace:main/puzzle/move/b
#-z c
execute as @e[tag=pp] at @s if block ~ ~ ~-2 air positioned ~-0.5 ~ ~0.5 if entity @a[dx=0,dy=1,dz=0] run function namespace:main/puzzle/move/c
#+z d
execute as @e[tag=pp] at @s if block ~ ~ ~2 air positioned ~-0.5 ~ ~-1.5 if entity @a[dx=0,dy=1,dz=0] run function namespace:main/puzzle/move/d

#パズル1完成
execute at @e[type=minecraft:zombie,limit=1,tag=p-blue] if block ~ ~-1 ~ minecraft:blue_glazed_terracotta at @e[type=zombie,limit=1,tag=p-lime] if block ~ ~-1 ~ minecraft:lime_glazed_terracotta at @e[type=zombie,tag=p-red,limit=1] if block ~ ~-1 ~ minecraft:red_glazed_terracotta at @e[type=zombie,tag=p-purple,limit=1] if block ~ ~-1 ~ minecraft:purple_glazed_terracotta run setblock 34 4 -35 minecraft:redstone_block

#ブロック落下
execute as @e[tag=pp] at @s if block ~ ~-1 ~ air at @s run function namespace:main/puzzle/move/drop

#パズル2復帰機能
teleport @a[x=-16,y=38,z=19,dx=4,dy=6,dz=4] -11 49 29





