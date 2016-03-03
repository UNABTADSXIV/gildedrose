require './item.rb'

class GildedRose
  # tipe_quality = 1 Deterioro Normal de Calidad
  def update_quality_tipe1(items)
	items.each do |item|
		if item.tipe_quality == 1
			if item.quality > 0
				item.quality -= 1
			end	
			item.sell_in -= 1
		end
	end
  end

  # tipe_quality = 2 Deterioro Inverso de Calidad
  def update_quality_tipe2(items)
	items.each do |item|
		if item.tipe_quality == 2
			if item.quality < 50
				item.quality += 1
			end	
			item.sell_in -= 1			
		end
	end
  end

  # tipe_quality = 3 Deterioro Acelerado Conjured 
  def update_quality_tipe3(items)
	items.each do |item|
		if item.tipe_quality == 3
			if item.quality >= 1
				item.quality -= 1			
			end
			if item.quality >= 1
				item.quality -= 1			
			end
			item.sell_in -= 1			
		end
	end
  end

  # tipe_quality = 4 Deterioro de Calidad Tipo Concierto
  def update_quality_tipe4(items)
	items.each do |item|
		if item.tipe_quality == 4 
			if item.sell_in > 0
			  if item.quality < 50
			  	item.quality += 1
			  end

			  if item.sell_in < 11 and item.quality < 50
				  item.quality += 1
			  end

			  if item.sell_in < 6 and item.quality < 50
				  item.quality += 1
			  end			
			end  
  			 item.sell_in -= 1

			 if item.sell_in == 0
				item.quality = 0
			 end

		end
	end
  end
  
end
	