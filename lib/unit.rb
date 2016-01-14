class Unit
  attr_reader :health_points, :attack_points

  def initialize(hp, ap)
    @health_points = hp
    @attack_points = ap
  end

  def damage(ap)
    @health_points -= ap
    @health_points
  end

  def attack!(enemy)
    return nil if enemy.dead? || self.dead?
    enemy.damage(@attack_points)
  end

  def dead?
    @health_points <= 0
  end
  
end