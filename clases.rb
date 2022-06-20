class Radio
    attr_accessor :volumen, :frecuencia, :title 

    def initialize(volumen, frecuencia) #constructor
        @volumen= volumen || 1 # Si no se ingresa un valor, se asigna 1
        @frecuencia= frecuencia || 'AM' # Si no se ingresa un valor, se asigna AM
        @title= title || "Radio Zero"
        
    end

    

    
end
