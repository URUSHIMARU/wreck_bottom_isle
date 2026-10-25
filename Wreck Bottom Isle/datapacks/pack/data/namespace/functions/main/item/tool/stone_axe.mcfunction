#親execute if entity @s[nbt={SelectedItem:{id:"minecraft:bricks"}}] run
replaceitem entity @s[nbt={SelectedItem:{Count:1b}}] weapon.mainhand minecraft:stone_axe{check:1,display:{Name:"{\"text\":\"石の斧\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"石でつくられた斧\",\"color\":\"white\",\"italic\":false}","{\"text\":\"柔らかい木なら壊せそうだ\",\"color\":\"white\",\"italic\":false}"]},CanDestroy:["minecraft:oak_log","minecraft:dark_oak_log"],Unbreakable:1b} 1

