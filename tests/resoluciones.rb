require '../src/trait'
require '../src/ejecutar_ambos_metodos'

Trait.define do
  name :Primero

  method :duplicated do
    puts 'hola'
  end
end

Trait.define do
  name :Segundo

  method :duplicated do
    puts 'santi'
  end
end

class MiClase
  uses (Segundo < {:duplicated => EjecutarAmbosMetodosResolucion.new})
end

instancia = MiClase.new

instancia.duplicated #deberia imprimir 'hola'\n''santi'