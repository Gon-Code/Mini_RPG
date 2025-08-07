require_relative 'character'

class Ranger < Character
  def initialize(name)
    super(name, 100, 25, 8, 1)
  end

  def ranged_attack(target)
    # ataque a distancia
  end
end