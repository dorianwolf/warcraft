class Unit

  attr_reader :health_points

  def initialize(health, attack)
    @health_points = health
    @attack_power = attack
  end

  def attack!(enemy)
    enemy.damage(@attack_power) unless self.dead? || enemy.dead?
  end

  def damage(damage)
    @health_points -= damage
  end

  def dead?
    @health_points <= 0
  end

end