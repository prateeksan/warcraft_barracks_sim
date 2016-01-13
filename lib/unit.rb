class Unit
  attr_reader :health_points, :attack_points

  def initialize(hp, ap)
    @health_points = hp
    @attack_points = ap
  end

  def damage(ap)
    @health_points -= ap
  end

  def attack!(enemy)
    enemy.damage(@attack_points)
  end
  
end