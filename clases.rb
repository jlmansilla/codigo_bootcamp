class Radio
    attr_accessor :volumen, :frecuencia, :title 

    def initialize(volumen, frecuencia) #constructor
        @volumen= volumen || 1 # Si no se ingresa un valor, se asigna 1
        @frecuencia= frecuencia || 'AM' # Si no se ingresa un valor, se asigna AM
        @title= title || "Radio Zero"
        
    end

    def SubirVolumen(volumen) # Método para subir el volumen
        
    end

    def BajarVolumen(volumen) # Método para bajar el volumen

    end

    def estatus # Método para mostrar el estatus de la radio
        return  "El radio tiene un volumen de #{self.volumen} y está en la frecuencia #{self.frecuencia}"
    end
end
