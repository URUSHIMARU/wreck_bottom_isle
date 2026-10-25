#親execute if entity @s[nbt={SelectedItem:{id:"minecraft:bricks"}}] run
replaceitem entity @s[nbt={SelectedItem:{Count:1b}}] weapon.mainhand minecraft:wooden_axe{check:1,display:{Name:"{\"text\":\"木の斧\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"木でつくられた斧\",\"color\":\"white\",\"italic\":false}","{\"text\":\"枯れ木程度なら壊せそうだ\",\"color\":\"white\",\"italic\":false}"]},CanDestroy:["minecraft:dark_oak_log"],Unbreakable:1b} 1

