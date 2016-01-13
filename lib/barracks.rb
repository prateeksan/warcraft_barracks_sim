class Barracks

  attr_reader :gold, :food

  FOOTMAN_TRAINING_GOLD_COST = 135
  FOOTMAN_TRAINING_FOOD_COST = 2

  PEASANT_TRAINING_GOLD_COST = 90
  PEASANT_TRAINING_FOOD_COST = 5

  def initialize
    @gold = 1000
    @food = 80
  end

  def can_train_footman?
    gold >= FOOTMAN_TRAINING_GOLD_COST && food >= FOOTMAN_TRAINING_FOOD_COST 
  end

  def can_train_peasant?
    gold >= PEASANT_TRAINING_GOLD_COST && food >= PEASANT_TRAINING_FOOD_COST
  end

  def train_peasant
    return nil unless can_train_peasant?
    @gold -= PEASANT_TRAINING_GOLD_COST
    @food -= PEASANT_TRAINING_FOOD_COST
    Peasant.new
  end

  def train_footman
    return nil unless can_train_footman?
    @gold -= FOOTMAN_TRAINING_GOLD_COST
    @food -= FOOTMAN_TRAINING_FOOD_COST
    Footman.new
  end


end
