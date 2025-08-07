require_relative 'character'

class Warrior < Character
  def initialize(name)
    super(name, 120, 35, 10, 1)
  end

  def special_attack(target)
    # ataque especial cuerpo a cuerpo
  end
end


