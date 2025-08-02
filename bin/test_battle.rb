# bin/battle.rb
# frozen_string_literal: true
# typed: true

require_relative '../lib/character'

# Crear personajes
legolas = Character.new("Legolas", 75, 30, 10, 1)
gonzalo = Character.new("Gonzalo", 150, 25, 20, 1)

# Bucle de combate por turnos
loop do
  # Turno de Legolas
  legolas.attack(gonzalo)
  if gonzalo.getHealth <= 0
    puts "#{gonzalo.getName} ha sido derrotado!"
    puts "#{legolas.getName} es el ganador!"
    break
  end
  puts "------------------------------------------"
  # Turno de Gonzalo
  gonzalo.attack(legolas)
  if legolas.getHealth <= 0
    puts "#{legolas.getName} ha sido derrotado!"
    puts "#{gonzalo.getName} es el ganador!"
    break
  end

  puts "##########################################"

  # Esperar antes del próximo turno (opcional)
  sleep(1)
end
