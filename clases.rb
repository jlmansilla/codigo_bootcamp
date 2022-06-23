class Radio
    attr_accessor :volumen, :frecuencia, :title 

    def initialize() #constructor
        @volumen= volumen || 1 # Si no se ingresa un valor, se asigna 1
        @frecuencia= frecuencia || 'AM' # Si no se ingresa un valor, se asigna AM
        @title= title || "Radio Zero"
        
    end

    def SubirVolumen(volumen) # Método para subir el volumen
        if @volumen + volumen > 30 
            
            puts "volumen  no valido"
        else
            @volumen += volumen
        end
    end

    def BajarVolumen(volumen) # Método para bajar el volumen
        if @volumen - volumen < 1
            
            puts "volumen  no valido"
        else
            @volumen -= volumen
        end
    end

    def CambiarFrecuencia(freq) # Método para cambiar la frecuencia
        if freq == 1
            @frecuencia = "AM"
        elsif freq == 2
           @frecuencia = "FM"
        else
            puts "Frecuencia no valida"
        end
    end

    def estatus # Método para mostrar el estatus de la radio
        return  "El radio tiene un volumen de #{self.volumen} y está en la frecuencia #{self.frecuencia}"
    end
end
