# http://classic.battle.net/war3/human/units/footman.shtml
require_relative ('./unit')
class Footman < Unit

  attr_reader :health_points, :attack_power

  def initialize
    @health_points = 60
    @attack_power = 10
  end

  def attack!(enemy)
    return enemy.damage(@attack_power/2) if enemy.is_a? Barracks
    enemy.damage(@attack_power)
  end

  def damage(ap)
    @health_points -= ap
  end

end
