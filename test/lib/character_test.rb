require_relative '../test_helper.rb'

class CharacterTest < Minitest::Test
  context 'como personaje base' do
    setup do
      @character = Character.new('Aragorn', 100, 30, 15, 1)
      @target = Character.new('Orco', 50, 10, 5, 1)
    end

    should 'tener nombre correctamente asignado' do
      assert_equal 'Aragorn', @character.getName
    end

    should 'tener salud correctamente asignada' do
      assert_equal 100, @character.getHealth
    end

    should 'recibir daño y reducir salud' do
      @character.receive_damage(20)
      assert_equal 80, @character.getHealth
    end

    should 'atacar a otro personaje y reducir su salud' do
      @character.attack(@target)
      assert_operator @target.getHealth, :<, 50
    end
  end
end
