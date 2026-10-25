

#ダークオークの原木
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:dark_oak_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-dark_oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=mal-dark_oak-cut] at @s run function namespace:main/wood/dark_oak/dark_oak

#オークの原木
execute as @e[type=item,nbt={Age:0s,Item:{id:"minecraft:oak_log"}},limit=1,sort=nearest,distance=..6] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["mal-oak-cut"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[type=armor_stand,tag=mal-oak-cut] at @s run function namespace:main/wood/oak/oak



#初期化
scoreboard players set @a[scores={mal_stone_axe=1..}] mal_stone_axe 0
scoreboard players set @a[scores={mal_wooden_axe=1..}] mal_wooden_axe 0


