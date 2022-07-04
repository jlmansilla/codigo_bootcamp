class Producto
    include MostrarNombre
    attr_accessor :clave, :nombre, :unidad, :precio, :categoria, :subcategoria
    def initialize(clave, nombre, unidad, precio, categoria, subcategoria)
        @clave = clave
        @nombre = nombre
        @unidad = unidad
        @precio = precio
        @categoria = categoria
        @subcategoria = subcategoria

        def generar_clave
            @clave = @nombre.split(" ").join("_")
            
        end

        def calcular_precio_final
            @precio = @precio * 1.19
        end

        def buscar_producto(clave)
            if @clave == clave
                puts "La clave del producto es: #{@clave}"
                puts "El nombre del producto es: #{@nombre}"
                puts "El precio del producto es: #{@precio}"
                puts "La unidad del producto es: #{@unidad}"
                puts "La categoria del producto es: #{@categoria}"
                puts "La subcategoria del producto es: #{@subcategoria}"
            else
                puts "El producto no existe"
            end
        end
            if @clave == clave
                return true
            else
                return false
            end
            
        end    
        
        def alta_producto
            puts "Ingrese el nombre del producto:"
            @nombre = gets.chomp
            puts "Ingrese la unidad del producto:"
            @unidad = gets.chomp
            puts "Ingrese el precio del producto:"
            @precio = gets.chomp.to_f
            puts "Ingrese la categoria del producto:"
            @categoria = gets.chomp
            puts "Ingrese la subcategoria del producto:"
            @subcategoria = gets.chomp
            
            
        end
    class Marca
        def alta_de_marca
            puts "Ingrese el nombre de la marca:"
            @nombre = gets.chomp
            
        end
    end

    class Categoria
        def alta_de_categoria
            puts "Ingrese el nombre de la categoria:"
            @nombre = gets.chomp
            
        
        end    
    end
end
















