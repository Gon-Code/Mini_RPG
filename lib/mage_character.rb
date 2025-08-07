require_relative 'character'

class Mage < Character
  def initialize(name)
    super(name, 80, 20, 5, 1)
  end

  def cast_spell(target)
    # ataque mágico
  end
end
