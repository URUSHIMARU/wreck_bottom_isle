#親execute if entity @s[nbt={SelectedItem:{id:"minecraft:bricks"}}] run
replaceitem entity @s[nbt={SelectedItem:{Count:1b}}] weapon.mainhand minecraft:potion{check:1,display:{Name:"{\"text\":\"水の入ったビン\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"水の入ったビン\",\"color\":\"white\",\"italic\":false}","{\"text\":\"中の水を出せば色々使えそう？\",\"color\":\"white\",\"italic\":false}"]},Potion:"minecraft:water"} 1

