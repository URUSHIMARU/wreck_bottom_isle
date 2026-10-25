#親execute if entity @s[nbt={SelectedItem:{id:"minecraft:bricks"}}] run
replaceitem entity @s[nbt={SelectedItem:{Count:1b}}] weapon.mainhand minecraft:stone_sword{check:1,display:{Name:"{\"text\":\"石の剣\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"石でつくられた剣\",\"color\":\"white\",\"italic\":false}","{\"text\":\"クモの巣を壊すのに使えそうだ\",\"color\":\"white\",\"italic\":false}"]},CanDestroy:["minecraft:cobweb"],Unbreakable:1b} 1

