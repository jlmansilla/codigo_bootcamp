class Celular
    def initialize(marca, color)
        @marca = marca
        @color = color
    end

    def llamar
        puts @marca + "-" + @color + " está llamando...."
    end
end

