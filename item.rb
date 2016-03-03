class Item
    
    attr_accessor :name,:sell_in,:quality,:tipe_quality

    def initialize name, sell_in, quality, tipe_quality
        @name = name
        @sell_in = sell_in
        @quality = quality
        # Nuevo Atributo tipe_quality 
        # tipe_quality = 0 Sin Deterioro de Calidad
        # tipe_quality = 1 Deterioro Normal de Calidad
        # tipe_quality = 2 Deterioro Inverso de Calidad
        # tipe_quality = 3 Deterioro Acelerado Conjured 
        # tipe_quality = 4 Deterioro de Calidad Tipo Concierto        
        @tipe_quality = tipe_quality        
    end

    def to_s
        "#{@name} , #{@sell_in}, #{@quality}"
    end
end
