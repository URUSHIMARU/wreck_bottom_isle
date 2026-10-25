#親 execute as @e[tag=mal-dark_oak-cut] at @s run


execute positioned ~1 ~ ~ if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #namespace:mal-dark_oak unless entity @e[distance=..0.5,tag=mal-dark_oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}


execute if block ~ ~ ~ #namespace:mal-dark_oak run fill ~ ~ ~ ~ ~ ~ air destroy
execute unless block ~ ~ ~ #namespace:mal-dark_oak run kill @s

execute as @e[type=armor_stand,tag=mal-dark_oak-cut] at @s run function namespace:main/wood/dark_oak/dark_oak
