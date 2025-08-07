#!/usr/bin/env ruby
require_relative '../lib/warrior_character'
require_relative '../lib/mage_character'

warrior = Warrior.new("Thorin")
mage = Mage.new("Gandalf")

puts "⚔️ ¡Batalla entre #{warrior.getName} (Warrior) y #{mage.getName} (Mage)!"

while warrior.getHealth > 0 && mage.getHealth > 0
  warrior.attack(mage)
  break if mage.getHealth <= 0

  mage.attack(warrior)
end

winner = warrior.getHealth > 0 ? warrior.getName : mage.getName
puts "\n🏆 ¡#{winner} ha ganado la batalla!"
