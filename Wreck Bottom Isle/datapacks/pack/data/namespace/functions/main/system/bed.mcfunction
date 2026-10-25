#親 execute if entity @e[tag=rule,limit=1,scores={sleep=60}] run

time set 1000
scoreboard players add @e[tag=rule] day 1
execute if entity @e[tag=rule,scores={day=6}] run tellraw @a {"text":"おーい！助けにきたぞー！"}
execute if entity @e[tag=rule,scores={day=6}] run fill -10 64 23 -15 67 21 minecraft:barrel replace air
execute if entity @e[tag=rule,scores={day=6}] run clone 16 14 -33 32 23 -22 -17 61 77

execute if entity @e[tag=rule,scores={day=..5}] run tellraw @a {"text":"朝になりました！探索に出かけよう！"}
execute if entity @e[tag=rule,scores={day=..5}] run playsound minecraft:entity.chicken.hurt master @a ~ ~ ~ 1000 1
execute if entity @e[tag=rule,scores={day=..5}] run bossbar set minecraft:time visible true
execute if entity @e[tag=rule,scores={day=..5}] run scoreboard players set @e[tag=rule] noon 1
execute if entity @e[tag=rule,scores={day=..5}] as @a at @s run title @s title [{"score":{"name":"@e[tag=rule,limit=1]","objective":"day"}},{"text":"日目"}]


bossbar set minecraft:time players @a
scoreboard players set @e[tag=rule] time 12050
scoreboard players set @a[scores={death=1..}] death 0
scoreboard players set @e[tag=rule] sleep 0
