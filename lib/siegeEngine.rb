class SiegeEngine < Unit

  attr_reader :health_points, :attack_power

  def initialize
    super(400, 50)
  end

  def attack!(enemy)
    hurt_barracks = @attack_power*4
    enemy.damage(hurt_barracks) if enemy.class == Barracks
    super unless enemy.class == Footman || enemy.class == Peasant || enemy.class == Barracks
  end

end