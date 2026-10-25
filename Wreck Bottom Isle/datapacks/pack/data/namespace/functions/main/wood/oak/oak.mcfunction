#親 execute as @e[tag=mal-oak-cut] at @s run


execute positioned ~1 ~ ~ if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~ ~ if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~ ~-1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~ if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~ if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #namespace:mal-oak unless entity @e[distance=..0.5,tag=mal-oak-cut] run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}


execute if block ~ ~ ~ #namespace:mal-oak run fill ~ ~ ~ ~ ~ ~ air destroy
execute unless block ~ ~ ~ #namespace:mal-oak run kill @s

execute as @e[type=armor_stand,tag=mal-oak-cut] at @s run function namespace:main/wood/oak/oak
