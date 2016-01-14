class SiegeEngine < Unit

  attr_reader :health_points, :attack_points

  def initialize
    @health_points = 400
    @attack_points = 50
  end

  def damage(ap)
    @health_points -= ap
  end

  def attack!(enemy)
    if enemy.is_a? SiegeEngine
      enemy.damage(@attack_points) 
    elsif enemy.is_a? Barracks
      enemy.damage(@attack_points*2)
    else
      return nil
    end
  end
end