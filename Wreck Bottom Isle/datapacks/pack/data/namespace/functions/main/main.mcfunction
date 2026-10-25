#ブロック常時設置
fill -10 77 -35 -6 79 -37 minecraft:beehive[honey_level=5] replace minecraft:beehive[honey_level=0]

#ワープゲート
particle minecraft:portal -25 52 44 0 0 0 1 100 force
tp @a[x=-25,y=51,z=44,dx=0,dy=2,dz=0] -8 54 -191


#カットオール移植
execute as @a[scores={mal_stone_axe=1..}] at @s run function namespace:main/wood/wood
execute as @a[scores={mal_wooden_axe=1..}] at @s run function namespace:main/wood/wood

#無線
execute as @a[scores={rod=1..}] at @s run tellraw @a[distance=2..] {"text":"相方が呼んでいます!"}
execute as @a[scores={rod=1..}] at @s run playsound minecraft:weather.rain.above master @a[distance=2..] ~ ~ ~ 100 2
scoreboard players set @a[scores={rod=1..}] rod 0

#パズル関連
function namespace:main/puzzle/puzzle

#ボトル
effect give @a[scores={bottle=1..}] minecraft:water_breathing 12 1 true
scoreboard players set @a[scores={bottle=1..}] bottle 0

#アイテム置換関連
execute as @a unless entity @s[nbt={SelectedItem:{tag:{check:1}}}] run function namespace:main/item/replace

#範囲外にでたら即死
execute as @e[type=boat] at @s if block ~ 0 ~ minecraft:bedrock run kill @s
execute as @a at @s if block ~ 0 ~ minecraft:bedrock run summon minecraft:lightning_bolt
execute as @a at @s if block ~ 0 ~ minecraft:bedrock run tellraw @s {"text":"雷に撃たれてしまった！"}
execute as @a at @s if block ~ 0 ~ minecraft:bedrock run kill @s
tellraw @a[scores={death=1}] {"text":"体力の限界になったので、探索はもうできそうにない"}
scoreboard players set @a[scores={death=1}] death 2

#二人とも死んだ場合
scoreboard players set @e[tag=rule] death2 0
execute as @a[scores={death=1..}] at @s run scoreboard players add @e[tag=rule] death2 1
execute if entity @e[tag=rule,scores={death2=2..}] run setblock 28 4 -34 minecraft:redstone_block


#上から降ってくる
execute positioned -82 77 -10 if entity @p[distance=..5] run setblock -88 94 -9 air

#初期プレイ時のテレポート
spawnpoint @a[tag=!first] -9 63 28
tp @a[tag=!first] -22 10 -76
tag @a add first

#ファントム
execute as @e[type=phantom] at @s if block ~ ~1 ~ air run teleport @s ~ ~-1 ~
effect give @e[type=phantom] minecraft:water_breathing 1 1 true

#ウィザーローズ無限湧き
fill -93 75 16 -93 75 16 minecraft:wither_rose replace air

#アリウム無限湧き
fill -40 88 -187 -40 88 -187 minecraft:allium replace air

#コーンフラワー無限湧き
fill 1 65 -21 1 65 -21 minecraft:cornflower replace air

#花で開く扉
execute if blocks -17 76 -191 -17 76 -189 -15 76 -191 all run fill -9 80 -196 -6 75 -196 air destroy

#石炭鉱石
fill -26 70 24 -27 71 25 minecraft:coal_ore replace air

#丸石
fill -25 65 -14 -24 64 -12 minecraft:cobblestone

#崖の水ギミック
execute if block -41 80 -159 water run setblock -45 79 -159 air

#子グマの年齢
execute as @e[tag=Baby] at @s run data merge entity @s {Age:-2147483648}


#ハシゴ
execute if block -40 75 -24 minecraft:ladder run fill -40 75 -24 -40 64 -24 ladder[facing=south] replace air
execute if block -27 77 -16 minecraft:ladder run fill -27 77 -16 -27 64 -16 ladder[facing=south] replace air

#浮遊解除
effect clear @a minecraft:levitation

#アイテムが消えなくなる
execute as @e[type=item,nbt={Age:5000s}] at @s run data merge entity @s {Age:-32768s}

#昼だけタイマー作動
execute if entity @e[scores={noon=1},tag=rule] positioned -9 63 28 run tellraw @a[distance=10..,scores={death=1..}] {"text":"今日はもう疲れたので拠点で休もう…"}
execute if entity @e[scores={noon=1},tag=rule] positioned -9 63 28 run teleport @a[distance=10..,scores={death=1..}] -9 63 28
execute as @e[tag=!stop2,tag=rule,scores={noon=1}] run time add 1t
execute as @e[tag=!stop2,tag=rule,scores={noon=1}] store result bossbar minecraft:time value run scoreboard players get @e[tag=rule,limit=1] time
execute as @e[tag=rule,scores={time=50}] run function namespace:main/system/noon
scoreboard players remove @e[tag=!stop2,tag=!stop,tag=rule,scores={time=1..,day=..5}] time 1

#夜の処理
scoreboard players remove @e[tag=rule,scores={night_time=1..}] night_time 1
execute if entity @e[tag=rule,scores={night_time=1}] run gamerule randomTickSpeed 0
execute if entity @e[scores={noon=0,day=..5},tag=rule,tag=!stop] positioned -9 63 28 run tellraw @a[distance=10..] {"text":"夜は危険なので拠点にいよう…"}
execute if entity @e[scores={noon=0,day=..5},tag=rule,tag=!stop] positioned -9 63 28 run teleport @a[distance=10..] -9 63 28


#ベッドに入ったことの検知
execute if entity @e[tag=rule,limit=1,scores={sleep=60}] run function namespace:main/system/bed

execute if block -14 62 27 green_bed[occupied=true] if block -14 62 31 minecraft:green_bed[occupied=true] run scoreboard players add @e[tag=rule] sleep 1
execute unless block -14 62 27 green_bed[occupied=true] run scoreboard players set @e[tag=rule] sleep 0
execute unless block -14 62 31 minecraft:green_bed[occupied=true] run scoreboard players set @e[tag=rule] sleep 0

#エンディング用
execute if entity @e[tag=rule,scores={day=6,ending=0}] positioned -6 63 38 if entity @a[x=-7,y=62,z=38,dx=3,dy=3,dz=3] run scoreboard players set @e[tag=rule] ending 1
scoreboard players add @e[tag=rule,scores={ending=1..550}] ending 1
execute if entity @e[tag=rule,scores={ending=40}] run tellraw @a {"text":"外に出ると社長が船で助けに来ているのが見えた"}
execute if entity @e[tag=rule,scores={ending=140}] run tellraw @a {"text":"助かったのだ！"}
execute if entity @e[tag=rule,scores={ending=180}] run effect give @a minecraft:blindness 22 1 true
execute if entity @e[tag=rule,scores={ending=180}] run effect give @a minecraft:slowness 22 200 true
execute if entity @e[tag=rule,scores={ending=200}] run effect give @a minecraft:invisibility 22 1 true
execute if entity @e[tag=rule,scores={ending=200}] run tp @a -64 10 -63
execute if entity @e[tag=rule,scores={ending=300}] run tellraw @a {"text":"社長の船に乗った後、島での生活の疲れと助かった安心感からか、ぐっすり寝てしまった…"}
execute if entity @e[tag=rule,scores={ending=400}] run tellraw @a {"text":"……"}
execute if entity @e[tag=rule,scores={ending=450}] run tellraw @a {"text":"…………"}
execute if entity @e[tag=rule,scores={ending=500}] run tellraw @a {"text":"………………"}
execute if entity @e[tag=rule,scores={ending=550}] run tellraw @a {"text":"……………………"}
execute if entity @e[tag=rule,scores={ending=550}] run teleport @a -62 10 -74

scoreboard players add @e[tag=rule,scores={ending=600..1500}] ending 1
execute if entity @e[tag=rule,scores={ending=..599,day=6}] if entity @e[x=-68,y=10,z=-76,dx=1,dy=1,dz=2] run scoreboard players set @e[tag=rule] ending 600
execute if entity @e[tag=rule,scores={ending=700}] run tellraw @a {"text":"<社長> おお！目が覚めたか！"}
execute if entity @e[tag=rule,scores={ending=800}] run tellraw @a {"text":"<社長> 君たちが寝ている間に君たちの撮った写真や記事を確認させてもらったよ"}
execute if entity @e[tag=rule,scores={ending=900}] run tellraw @a {"text":"<社長> さて、君たちの取材結果についてだが…"}
execute if entity @e[tag=rule,scores={ending=1000,news=0..1}] run tellraw @a {"text":"<社長> なんの成果も得られなかったようだな！君たちは今日でクビだ！"}
execute if entity @e[tag=rule,scores={ending=1000,news=0..1}] run playsound minecraft:entity.pig.death master @a -70 10 -75 100 1
execute if entity @e[tag=rule,scores={ending=1000,news=2..9}] run tellraw @a {"text":"<社長> まぁ大きな成果はないようだがないよりはマシだ！どうにか頑張ろう！"}
execute if entity @e[tag=rule,scores={ending=1000,news=2..9}] run playsound minecraft:entity.villager.no master @a -70 10 -75 100 1
execute if entity @e[tag=rule,scores={ending=1000,news=10..15}] run tellraw @a {"text":"<社長> 初めてにしてはよくやった！なんとかなりそうだ！"}
execute if entity @e[tag=rule,scores={ending=1000,news=10..15}] run playsound minecraft:entity.player.levelup master @a -70 10 -75 100 1
execute if entity @e[tag=rule,scores={ending=1000,news=16..34}] run tellraw @a {"text":"<社長> よく頑張ってくれた！上出来だ！"}
execute if entity @e[tag=rule,scores={ending=1000,news=16..34}] run playsound minecraft:ui.toast.challenge_complete master @a -70 10 -75 100 1
execute if entity @e[tag=rule,scores={ending=1000,news=35..}] run tellraw @a {"text":"<社長> 素晴らしい成果だ！これで我が社も安泰だ！"}
execute if entity @e[tag=rule,scores={ending=1000,news=35..}] run playsound minecraft:ui.toast.challenge_complete master @a -70 10 -75 100 1

execute if entity @e[tag=rule,scores={ending=1100}] run effect give @a minecraft:blindness 28 10 true
execute if entity @e[tag=rule,scores={ending=1100}] run effect give @a minecraft:invisibility 28 10 true
execute if entity @e[tag=rule,scores={ending=1150}] run tellraw @a {"text":"……"}
execute if entity @e[tag=rule,scores={ending=1200}] run tellraw @a {"text":"…………"}
execute if entity @e[tag=rule,scores={ending=1250}] run tellraw @a {"text":"………………"}

execute if entity @e[tag=rule,scores={ending=1300,news=0..1}] run tellraw @a {"text":"クビになった直後、会社も倒産してしまうのだがそれはまた別のお話で"}
execute if entity @e[tag=rule,scores={ending=1300,news=2..9}] run tellraw @a {"text":"この後僕たちは会社の倒産は免れるも、厳しい記者生活が続くのだがそれはまた別のお話で"}
execute if entity @e[tag=rule,scores={ending=1300,news=10..15}] run tellraw @a {"text":"この後僕たちは2流記者としてではあるが、可もなく不可もない記者生活が続くのだがそれはまた別のお話で"}
execute if entity @e[tag=rule,scores={ending=1300,news=16..34}] run tellraw @a {"text":"この後僕たちは1流記者としてビッグニュースを発掘していくのだがそれはまた別のお話で"}
execute if entity @e[tag=rule,scores={ending=1300,news=35..}] run tellraw @a {"text":"<社長> この後僕たちは超一流記者として世界をまたにかけることになるのだがそれはまた別のお話で"}

execute if entity @e[tag=rule,scores={ending=1400}] run title @a title [{"text":"Wreck Bottom Isle","color":"red"}]
execute if entity @e[tag=rule,scores={ending=1500}] run title @a title [{"text":"END","color":"red"}]
execute if entity @e[tag=rule,scores={ending=1500}] run clone -73 8 -75 -73 8 -75 -73 10 -75

#チュートリアル
scoreboard players add @e[tag=rule,scores={first_talk=1..1450}] first_talk 1
execute if entity @e[tag=rule,scores={first_talk=100}] run tellraw @a {"text":"ようこそ我が新聞社へ"}
execute if entity @e[tag=rule,scores={first_talk=200}] run tellraw @a {"text":"私はこの新聞会社の社長、レジーだ"}
execute if entity @e[tag=rule,scores={first_talk=300}] run tellraw @a {"text":"<社長> さて、入社したての君たちに言うのもあれなのだが"}
execute if entity @e[tag=rule,scores={first_talk=400}] run tellraw @a {"text":"<社長> 昨今の新聞の読者離れで我が社は倒産寸前なのだ"}
execute if entity @e[tag=rule,scores={first_talk=500}] run tellraw @a {"text":"<社長> そこで君たちにはなけなしの予算を使ってとある無人島に取材へ行き、この危機を乗り切るスクープを探してもらう"}
execute if entity @e[tag=rule,scores={first_talk=600}] run tellraw @a {"text":"<社長> 行き先は船の墓場と呼ばれる魔の海域にある島、『レックボトムアイル』だ"}
execute if entity @e[tag=rule,scores={first_talk=700}] run tellraw @a {"text":"<社長> 突然のことで驚いただろうがどうか安心してほしい"}
execute if entity @e[tag=rule,scores={first_talk=800}] run tellraw @a {"text":"<社長> 無人島での過ごし方について私が直々に研修をつけてあげよう"}
execute if entity @e[tag=rule,scores={first_talk=900}] run tellraw @a {"text":"<社長> じゃあまずは島での物資探しについてだ"}
execute if entity @e[tag=rule,scores={first_talk=1000}] run tellraw @a {"text":"<社長> 今君たちの目の前にあるツルハシを手に持つんだ"}
execute if entity @e[tag=rule,scores={first_talk=1100}] run tellraw @a {"text":"<社長> 今回はツルハシとわかりやすいものであるが、島では用途不明のものもたくさん拾うことだろう"}
execute if entity @e[tag=rule,scores={first_talk=1200}] run tellraw @a {"text":"<社長> 手にいれたものをとりあえず手に持てば、インベントリ欄で詳細を見ることができるぞ"}
execute if entity @e[tag=rule,scores={first_talk=1300}] run tellraw @a {"text":"<社長> どうやらこのツルハシは『レンガ』を掘れるみたいだな"}
execute if entity @e[tag=rule,scores={first_talk=1400}] run tellraw @a {"text":"<社長> さぁ、レンガを掘ったらレンガの使い道を確認してみるんだ"}
execute if block -34 10 -75 minecraft:bricks if entity @e[tag=rule,scores={first_talk=..1500}] run tellraw @a {"text":"<社長> ブラボー！では次の部屋に進みたまえ"}
execute if block -34 10 -75 minecraft:bricks if entity @e[tag=rule,scores={first_talk=..1500}] run setblock -36 10 -75 minecraft:stone_pressure_plate
execute if block -34 10 -75 minecraft:bricks if entity @e[tag=rule,scores={first_talk=..1500}] run scoreboard players set @e[tag=rule] first_talk 1800

scoreboard players add @e[tag=rule,scores={first_talk=2000..3100}] first_talk 1
execute if entity @e[tag=rule,scores={first_talk=2100}] run tellraw @a {"text":"<社長> 次は島での注意点についてだ"}
execute if entity @e[tag=rule,scores={first_talk=2200}] run tellraw @a {"text":"<社長> 島というからにはもちろん海で囲まれている"}
execute if entity @e[tag=rule,scores={first_talk=2300}] run tellraw @a {"text":"<社長> 海と言ったらやはり泳ぎたくなるものだよな！"}
execute if entity @e[tag=rule,scores={first_talk=2400}] run tellraw @a {"text":"<社長> だが気を付けるんだ！"}
execute if entity @e[tag=rule,scores={first_talk=2500}] run tellraw @a {"text":"<社長> レックボトムアイルは魔の海域にある島だ"}
execute if entity @e[tag=rule,scores={first_talk=2600}] run tellraw @a {"text":"<社長> 島から少し離れると、すさまじい嵐に襲われる！"}
execute if entity @e[tag=rule,scores={first_talk=2700}] run tellraw @a {"text":"<社長> 嵐が来るとき、決まって海が赤みを帯びた色になるらしい！"}
execute if entity @e[tag=rule,scores={first_talk=2800}] run tellraw @a {"text":"<社長> 赤くなった海には絶対に近づくんじゃあないぞ！"}
execute if entity @e[tag=rule,scores={first_talk=2900}] run tellraw @a {"text":"<社長> もし、嵐に遭遇して体力を消耗すれば、その日は探索ができずに無駄な時間を過ごすことになるからな！"}
execute if entity @e[tag=rule,scores={first_talk=3000}] run tellraw @a {"text":"<社長> もっとも、あまり沖まで出なければ心配ないはずだからそこは安心してくれたまえ！"}
execute if entity @e[tag=rule,scores={first_talk=3100}] run tellraw @a {"text":"<社長> さて、それでは次の部屋に進みたまえ"}
execute if entity @e[tag=rule,scores={first_talk=3100}] run setblock -46 10 -75 minecraft:stone_pressure_plate

scoreboard players add @e[tag=rule,scores={first_talk=4000..4800}] first_talk 1
execute if entity @e[tag=rule,scores={first_talk=4100}] run tellraw @a {"text":"<社長> おっと、夜になってしまったようだな"}
execute if entity @e[tag=rule,scores={first_talk=4200}] run tellraw @a {"text":"<社長> 島は猛獣がいるようだが、夜に出会ってしまっては勝ち目がない"}
execute if entity @e[tag=rule,scores={first_talk=4300}] run tellraw @a {"text":"<社長> 夜は拠点にこもって絶対に外に出ないようにするのだぞ"}
execute if entity @e[tag=rule,scores={first_talk=4400}] run tellraw @a {"text":"<社長> 基本的に島では昼に探索をして、夜はお互いの成果を報告するのが良いと思うぞ"}
execute if entity @e[tag=rule,scores={first_talk=4500}] run tellraw @a {"text":"<社長> それと、島での生活は疲労がつきものだ"}
execute if entity @e[tag=rule,scores={first_talk=4600}] run tellraw @a {"text":"<社長> 2人が寝れば次に目を覚ますときには朝になっているだろう"}
execute if entity @e[tag=rule,scores={first_talk=4700}] run tellraw @a {"text":"<社長> 昼の時間は限られているから、素早く効率的に行動するのだぞ！"}
execute if entity @e[tag=rule,scores={first_talk=4800}] run tellraw @a {"text":"<社長> では次の部屋に進みたまえ"}
execute if entity @e[tag=rule,scores={first_talk=4800}] run setblock -66 10 -75 minecraft:stone_pressure_plate

scoreboard players add @e[tag=rule,scores={first_talk=5000..6700}] first_talk 1
execute if entity @e[tag=rule,scores={first_talk=5100}] run tellraw @a {"text":"<社長> おめでとう！研修は合格だ！"}
execute if entity @e[tag=rule,scores={first_talk=5200}] run tellraw @a {"text":"<社長> さて、今回の島への取材の目的だが"}
execute if entity @e[tag=rule,scores={first_talk=5300}] run tellraw @a {"text":"<社長> レックボトムアイルは数百年前、海賊が縄張りにしていたという伝説がある"}
execute if entity @e[tag=rule,scores={first_talk=5400}] run tellraw @a {"text":"<社長> そこで、その証拠、あるいはそれ以上の面白い何かを見つけてきてもらいたいのだ"}
execute if entity @e[tag=rule,scores={first_talk=5500}] run tellraw @a {"text":"<社長> 何？なんでそんな噂のある島が今日まで放置されているのかだって？"}
execute if entity @e[tag=rule,scores={first_talk=5600}] run tellraw @a {"text":"<社長> はっはっはっは"}
execute if entity @e[tag=rule,scores={first_talk=5700}] run tellraw @a {"text":"<社長> それはあの島のある海域が常に異常気象で並みの人間では立ち入ることすらできないからさ"}
execute if entity @e[tag=rule,scores={first_talk=5800}] run tellraw @a {"text":"<社長> うん？じゃあどうやって行けばいいんだって？"}
execute if entity @e[tag=rule,scores={first_talk=5900}] run tellraw @a {"text":"<社長> 安心しろ！今回のためになけなしの金でAIを搭載した最新の船をチャーターした！"}
execute if entity @e[tag=rule,scores={first_talk=5900}] run tellraw @a {"text":"(というか操縦士に拒否られてこれしかなかったんだけど)"}
execute if entity @e[tag=rule,scores={first_talk=6000}] run tellraw @a {"text":"<社長> まぁ、元凄腕漁師だった私が信頼するAI船だ！大船に乗った気でいなさい！"}
execute if entity @e[tag=rule,scores={first_talk=6100}] run tellraw @a {"text":"<社長> それでは早速だがいってくるんだ！"}
execute if entity @e[tag=rule,scores={first_talk=6100}] run clear @a
execute if entity @e[tag=rule,scores={first_talk=6100}] run tp @a -64 10 -63
execute if entity @e[tag=rule,scores={first_talk=6100}] run effect give @a minecraft:blindness 32 1 true
execute if entity @e[tag=rule,scores={first_talk=6100}] run effect give @a minecraft:invisibility 32 1 true
execute if entity @e[tag=rule,scores={first_talk=6150}] run tellraw @a {"text":"……"}
execute if entity @e[tag=rule,scores={first_talk=6200}] run tellraw @a {"text":"…………"}
execute if entity @e[tag=rule,scores={first_talk=6250}] run tellraw @a {"text":"………………"}
execute if entity @e[tag=rule,scores={first_talk=6300}] run tellraw @a {"text":"案の定船は嵐に遭遇し、沈没した"}
execute if entity @e[tag=rule,scores={first_talk=6400}] run tellraw @a {"text":"僕たちはどうにか島まで泳ぎきることに成功した"}
execute if entity @e[tag=rule,scores={first_talk=6500}] run tellraw @a {"text":"社長に連絡し、助けを求めてみたが、島周囲の海域の天候が悪すぎて5日は助けにこれないらしい"}
execute if entity @e[tag=rule,scores={first_talk=6600}] run tellraw @a {"text":"社長は助けにいくまでに取材をするように言った"}
execute if entity @e[tag=rule,scores={first_talk=6700}] run tellraw @a {"text":"初日に拠点になりそうな洞窟を見つけ、ベッド代わりに葉っぱを集めた僕たちはお互いを励ましながら体を休めるのであった…"}
execute if entity @e[tag=rule,scores={first_talk=6700}] run tp @a -9 63 29
execute if entity @e[tag=rule,scores={first_talk=6700}] run give @a minecraft:bread 3
execute if entity @e[tag=rule,scores={first_talk=6700}] run give @a minecraft:carrot_on_a_stick{display:{Name:"{\"text\":\"無線機\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"会社から支給された無線機\",\"color\":\"white\",\"italic\":false}","{\"text\":\"使用すると相方に連絡をとれる\",\"color\":\"white\",\"italic\":false}"]},CustomModelData:1}
execute if entity @e[tag=rule,scores={first_talk=6700}] run give @a minecraft:orange_wool{display:{Name:"{\"text\":\"カメラ\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"会社から支給されたカメラ\",\"color\":\"white\",\"italic\":false}","{\"text\":\"取材には欠かせない\",\"color\":\"white\",\"italic\":false}","{\"text\":\"※持っているだけで自動で使用されます\",\"color\":\"white\",\"italic\":false}"]},CustomModelData:1}


execute if entity @e[tag=rule,scores={first_talk=6700}] run tag @e[tag=rule] remove stop


execute if entity @e[tag=rule,scores={first_talk=..6700}] run effect give @a minecraft:saturation 2 2 true





