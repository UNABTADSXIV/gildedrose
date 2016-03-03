require './item'
require './gilded_rose'

#Objeto Item(name, sell_in, quality, tipe_quality')
# tipe_quality = 0 Sin Deterioro de Calidad
# tipe_quality = 1 Deterioro Normal de Calidad
# tipe_quality = 2 Deterioro Inverso de Calidad
# tipe_quality = 3 Deterioro Acelerado Conjured 
# tipe_quality = 4 Deterioro de Calidad Tipo Evento

items = []
items.push Item.new "+5 Dexterity Vest",10,20, 1 
items.push Item.new "Aged Brie", 2, 0, 2
items.push Item.new "Elixir of the Mongoose", 5, 7, 1
items.push Item.new "Sulfuras, Hand of Ragnaros", 0, 80, 0
items.push Item.new "Sulfuras, Hand of Ragnaros", -1, 80, 0
items.push Item.new "Backstage passes to a TAFKAL80ETC concert", 15, 20, 4
items.push Item.new "Backstage passes to a TAFKAL80ETC concert", 10, 49, 4
items.push Item.new "Backstage passes to a TAFKAL80ETC concert",  5, 49, 4
#this conjured item does not work properly yet
items.push Item.new "Conjured Mana Cake", 3, 6, 3

app = GildedRose.new 

days = 15
(0..days).each {|i| 
  puts "------------ day #{i} ---------"
  puts "name, sell_in, quality"
  for item in items
    puts item
  end

  app.update_quality_tipe1 items
  app.update_quality_tipe2 items
  app.update_quality_tipe3 items
  app.update_quality_tipe4 items
  
}
