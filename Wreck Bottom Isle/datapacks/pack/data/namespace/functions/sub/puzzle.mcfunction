
kill @e[tag=pp]

#パズル1初期化
fill -8 59 -187 -7 56 -188 air
setblock 34 4 -35 minecraft:stone
fill -19 54 -199 4 55 -176 air replace minecraft:stone_brick_wall

summon minecraft:zombie -3 54 -180 {Tags:["pp","p-blue"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],ArmorItems:[{},{},{},{tag:{CustomModelData:1},id:"minecraft:red_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"none"}
fill -2 55 -181 -4 54 -179 minecraft:stone_brick_wall

summon minecraft:zombie 0 54 -195 {Tags:["pp","p-red"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],ArmorItems:[{},{},{},{tag:{CustomModelData:2},id:"minecraft:red_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"none"}
fill -1 55 -194 1 54 -196 minecraft:stone_brick_wall

summon minecraft:zombie -15 54 -186 {Tags:["pp","p-purple"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],ArmorItems:[{},{},{},{tag:{CustomModelData:4},id:"minecraft:red_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"none"}
fill -16 55 -187 -14 54 -185 minecraft:stone_brick_wall

summon minecraft:zombie -15 54 -198 {Tags:["pp","p-lime"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],ArmorItems:[{},{},{},{tag:{CustomModelData:3},id:"minecraft:red_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"none"}
fill -16 55 -197 -14 54 -199 minecraft:stone_brick_wall



#パズル2
fill -10 25 18 -21 30 29 air replace minecraft:stone_brick_wall

summon minecraft:zombie -11 25 19 {Tags:["pp","p-stone"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],ArmorItems:[{},{},{},{tag:{CustomModelData:5},id:"minecraft:red_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"none"}
fill -12 26 20 -10 25 18 minecraft:stone_brick_wall

summon minecraft:zombie -14 49 25 {Tags:["pp","p-stone"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],ArmorItems:[{},{},{},{tag:{CustomModelData:5},id:"minecraft:red_wool",Count:1b}],ArmorDropChances:[0f,0f,0f,0f],DeathLootTable:"none"}
fill -15 50 26 -13 49 24 minecraft:stone_brick_wall

