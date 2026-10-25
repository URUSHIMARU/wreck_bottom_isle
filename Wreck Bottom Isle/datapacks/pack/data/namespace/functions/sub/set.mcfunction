
setworldspawn 110 6 8
gamerule randomTickSpeed 0
gamerule commandBlockOutput false
gamerule doFireTick false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule keepInventory true
gamerule doDaylightCycle false


#ワールドボーダー
worldborder warning distance 280
#スポーン位置
setworldspawn -22 10 -76


#朝夜判定
scoreboard objectives add noon dummy
#数秒だけランダムtickspeedを上げる
scoreboard objectives add night_time dummy
#夜までの時間
scoreboard objectives add time dummy
#日数
scoreboard objectives add day dummy

#初期化
scoreboard players set @e[tag=rule] news 0
scoreboard players set @e[tag=rule] day 0
scoreboard players set @e[tag=rule] death 0
scoreboard players set @e[tag=rule] noon 0
scoreboard players set @e[tag=rule] first_talk 0
scoreboard players set @e[tag=rule] ending 0
tag @e[tag=rule] add stop
tag @e[tag=rule] remove stop2
