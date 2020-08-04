class CuentaBancarias
    attr_accessor:nombre_usuario
    def initialize(nombre_usuario, numero_cuenta, vip=0)
        if numero_cuenta.digits.count != 8
            raise RangeError, 'El largo del número debe ser 8 dígitos'
        end 
        if vip != 0 && vip != 1
            raise RangeError, 'El valor VIP debe ser 0 y 1'
        end    
        @nombre = nombre_usuario
        @numero = numero_cuenta
        @vip = vip
    end

    def numero_de_cuenta 
        "#{@vip}-#{@numero}"
    end    
end

prueba=CuentaBancarias.new('Jorge',12345678,5)
puts prueba.inspect
puts prueba.numero_de_cuenta