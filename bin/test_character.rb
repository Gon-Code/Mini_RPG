#!/usr/bin/env ruby
# typed: strict
require_relative '../lib/character'

# Crear un personaje
hero = Character.new("Aragon", 100, 20, 10, 1)

# Mostrar su información
puts hero.to_s

# Probar getters y setters
hero.setHealth(90)
puts "Updated health: #{hero.getHealth}"
