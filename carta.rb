class Carta
    attr_accessor :numero, :pinta
    def initialize(numero,pinta)
        if !(1..13).include?(numero)
            raise ArgumentError, 'El numero no está entre 1 y 13'
        end
        if  !['Corazon','Diamante','Espada','Trebol'].include? (pinta)
            raise ArgumentError, 'La pinta está errónea'
        end    
        @numero=numero
        @pinta=pinta
            
    end
    
    def self.numero
        Random.rand(1..13)
    end    

    def self.pinta
        ['Corazon','Diamante','Espada','Trebol'].sample
    end
end
array = []
5.times do
    c1=Carta.new(Carta.numero,Carta.pinta)
    array.push c1    
end    
puts array
#carta2=Carta.new(15,'ertw')

