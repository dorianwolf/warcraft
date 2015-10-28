# http://classic.battle.net/war3/human/units/footman.shtml

class Footman < Unit

  attr_reader :health_points, :attack_power

  def initialize
    super(60, 10) 
  end

  def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(damage)
    @health_points -= damage
  end

end
