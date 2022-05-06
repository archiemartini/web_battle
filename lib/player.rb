class Player

  attr_reader :name, :hitpoints

  DEFAULT_HITPOINTS = 50
  
  def initialize(name)
  @name = name
  @hitpoints = DEFAULT_HITPOINTS
  end

  def received_damage 
    @hitpoints -= 10
  end

  def attack(name)
    name.received_damage
  end

end
