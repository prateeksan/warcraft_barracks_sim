require_relative 'spec_helper'

describe "Unit" do 

  before :each do
    @unit = Unit.new(40, 2)
  end

  describe "#dead?" do
    it "Should return true if @health_points are less than or equal to 0" do
      @unit.damage(40)
      expect(@unit.dead?).to eq(true)
    end
    it "should make @unit nil if self is dead" do
      @unit.damage(40)
      @footman = Footman.new
      expect(@unit.attack!(@footman)).to eq(nil)
    end
    it "should make @unit nil if unit being attacked is dead" do
      @unit_2 = Unit.new(1,1)
      @unit.attack!(@unit_2)
      expect(@unit.attack!(@unit_2)).to eq(nil)
    end
  end


end