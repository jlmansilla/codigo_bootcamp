class Radio
    attr_accessor :volumen, :frecuencia, :title

    def initialize(vol, freq) 
        @volumen= vol
        @frecuencia= freq
        puts "El radio tiene un volumen de #{@volumen} y está en la frecuencia #{@frecuencia}"
    end

    def volumen
        
    end
    
    def frecuencia
        
    end

    def estatus
        puts "El radio tiene un volumen de #{@volumen} y está en la frecuencia #{@frecuencia}"
    end

end

#radio_zero= Radio.new
#radio_zero.volumen = @volumen
#puts radio_zero.volumen