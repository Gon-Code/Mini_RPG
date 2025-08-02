# typed: false
require "sorbet-runtime"

# Character class represents a character in the game with attributes like name, health, strength, defense, and level.
# It provides methods to get and set these attributes, as well as a string representation of the character.

class Character 
    extend T::Sig
    ## Main Constructor
    # Initializes a new character with the given attributes.
    #
    # @param name [String] The name of the character.
    # @param health [Integer] The health points of the character.
    # @param strength [Integer] The strength points of the character.
    # @param defense [Integer] The defense points of the character.
    # @param level [Integer] The level of the character.
    #
    # @return [Character] A new instance of Character.
    #
    # @example
    #   character = Character.new("Hero", 100, 20, 15, 1)
    #   puts character.to_s
    #
    # Output:
    #   Character: Hero, Health: 100, Strength: 20, Defense: 15, Level: 1
    #
    sig { params(name: String, health: Integer, strength: Integer, defense: Integer, level: Integer).void }
    def initialize(name, health, strength, defense, level)
        @name = name
        @health = health
        @strength = strength
        @defense = defense
        @level = level
    end

    ## Getters and Setters

    sig { returns(String) }
    def getName
        @name
    end

    sig { returns(Integer) }
    def getHealth
        @health
    end

    sig { returns(Integer) }
    def getStrength
        @strength
    end

    sig { returns(Integer) }
    def getDefense
        @defense
    end

    sig { returns(Integer) }
    def getLevel
        @level
    end

    ## Setters

    sig { params(name: String).void }
    def setName(name)
        @name = name
    end

    sig { params(health: Integer).void }
    def setHealth(health)
        @health = health
    end

    sig{  params(strength: Integer).void }
    def setStrength(strength)
        @strength = strength
    end

    sig{  params(defense: Integer).void }
    def setDefense(defense)
        @defense = defense
    end

    sig { params(level: Integer).void }
    def setLevel(level)
        @level = level
    end

    ## More Methods

    sig { params(target: Character).void }
    def attack(target)
        damage = @strength - target.getDefense
        damage = 0 if target.getDefense > @strength
        puts "#{@name} Ataco y realizo #{damage} puntos de DAMAGE"
        target.receive_damage(@strength)
    end

    sig{ params(damage: Integer).void }
    def receive_damage(damage)
        @health -= damage
        @health = 0 if @health < 0
        puts "#{@name} se queja .... Su vida actual es #{@health}"
    end

    sig { returns(String) }
    def to_s
        "Character: #{@name}, Health: #{@health}, Strength: #{@strength}, Defense: #{@defense}, Level: #{@level}"
    end
end