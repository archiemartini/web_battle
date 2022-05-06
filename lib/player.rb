class Player

  attr_reader :name, :hitpoints

  DEFAULT_HITPOINTS = 50
  
  def initialize(name)
  @name = name
  @hitpoints = DEFAULT_HITPOINTS
  end

  def attacked 
    @hitpoints -= 10
  end

end
