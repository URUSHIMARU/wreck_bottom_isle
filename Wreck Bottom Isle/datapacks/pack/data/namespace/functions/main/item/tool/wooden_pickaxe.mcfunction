#親execute if entity @s[nbt={SelectedItem:{id:"minecraft:bricks"}}] run
replaceitem entity @s[nbt={SelectedItem:{Count:1b}}] weapon.mainhand minecraft:wooden_pickaxe{check:1,display:{Name:"{\"text\":\"木のツルハシ\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"木でつくられたツルハシ\",\"color\":\"white\",\"italic\":false}","{\"text\":\"丸石の採掘に使えそうだ\",\"color\":\"white\",\"italic\":false}"]},CanDestroy:["minecraft:cobblestone"],Unbreakable:1b} 1

