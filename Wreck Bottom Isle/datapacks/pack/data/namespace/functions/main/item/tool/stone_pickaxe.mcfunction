#親execute if entity @s[nbt={SelectedItem:{id:"minecraft:bricks"}}] run
replaceitem entity @s[nbt={SelectedItem:{Count:1b}}] weapon.mainhand minecraft:stone_pickaxe{check:1,display:{Name:"{\"text\":\"石のツルハシ\",\"color\":\"white\",\"italic\":false}",Lore:["{\"text\":\"石でつくられたツルハシ\",\"color\":\"white\",\"italic\":false}","{\"text\":\"石炭の採掘に使えそうだ\",\"color\":\"white\",\"italic\":false}"]},CanDestroy:["minecraft:coal_ore","minecraft:cobblestone"],Unbreakable:1b} 1

