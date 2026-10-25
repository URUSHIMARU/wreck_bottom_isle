#親 execute as @e[tag=rule,scores={time=50}] run
setblock 28 4 -34 minecraft:stone
scoreboard players set @a[scores={death=1..}] death 0
tellraw @a {"text":"夜になったので拠点に戻ります。"}
effect give @a minecraft:blindness 4 1 true
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1000 0
gamerule randomTickSpeed 10000
teleport @a -9 63 28
bossbar set minecraft:time visible false
time set 18000
scoreboard players set @e[tag=rule] noon 0
scoreboard players set @e[tag=rule] night_time 300