execute as @a at @s run teleport ~ ~0.1 ~
particle minecraft:explosion -24.32 49.35 -26.00 1 1 1 1 1 force
particle minecraft:explosion -14 52 -15 1 1 1 1 1 force
particle minecraft:explosion -14 43 -4 1 1 1 1 1 force
particle minecraft:explosion -14 48 16 1 1 1 1 1 force
particle minecraft:explosion -14 33 32 1 1 1 1 1 force
particle minecraft:explosion 6 37 14 1 1 1 1 1 force
particle minecraft:explosion 7 43 23 1 1 1 1 1 force
particle minecraft:explosion -24 28 15 1 1 1 1 1 force

effect give @a minecraft:resistance 1 1 true
effect give @a minecraft:saturation 2 2 true

scoreboard players add @e[tag=rule] bgm 1
scoreboard players set @e[tag=rule,scores={bgm=15..}] bgm 1
execute if entity @e[scores={bgm=1}] at @a run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.1 0
execute if entity @e[scores={bgm=7}] at @a run playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 0.3 0.5




execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run effect give @a minecraft:blindness 5 1 true
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run scoreboard players set @e[tag=rule] day 5
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run time set 18000
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run scoreboard players set @e[tag=rule] noon 0
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run scoreboard players set @e[tag=rule] time 0
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run setblock 26 4 -35 minecraft:redstone_block
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run setblock 25 4 -35 stone
execute if entity @p[x=-6,y=29,z=33,dx=1,dy=2,dz=1] run teleport @a -8 63 28



