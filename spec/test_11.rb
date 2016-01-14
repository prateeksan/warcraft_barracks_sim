require_relative 'spec_helper'

describe Barracks do 

  before :each do 
    @barracks = Barracks.new
  end

  describe "#health_points" do
    it "has and knows its Health Points (HP) " do
      expect(@barracks.health_points).to eq(500)
    end
  end

  describe "#damage" do 
    it "should lose HP by half of AP if footman attacks." do
      @footman = Footman.new
      initial_health = @barracks.health_points
      @footman.attack!(@barracks)
      expect(@barracks.health_points).to eq(initial_health - @footman.attack_power/2)
    end
  end

  
end