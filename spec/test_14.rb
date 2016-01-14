require_relative "spec_helper"

describe SiegeEngine do

  describe "initialization" do

    it "requires SiegeEngine to exist" do
      SiegeEngine.new
    end

    it "requires SiegeEngine to be a unit" do
      expect(SiegeEngine.new).to be_a Unit
    end
  end

  before :each do
    @siege_engine = SiegeEngine.new
    @siege_engine_2 = SiegeEngine.new
  end

  describe "#damage" do
    it "Should reduce health points based on the damage recieved" do
      allow(@siege_engine).to receive(:attack!).and_return(@siege_engine_2.damage(50))
      @siege_engine.attack!
      expect(@siege_engine_2.health_points).to eq(350)
    end
  end

  describe "#attack!" do
    it "Should return nil if it tries to attack peasants or footmen" do 
      @footman = Footman.new 
      expect(@siege_engine.attack!(@footman)).to eq(nil)
    end
    it "Should be able to attack other siege engines and inflict its attack points as damage" do
      initial_engine_hp = @siege_engine_2.health_points
      @siege_engine.attack!(@siege_engine_2)
      expect(@siege_engine_2.health_points).to eq(initial_engine_hp - @siege_engine.attack_points)
    end
    it "Should be able to attack barracks and inflict twice its attack points as damage" do
      @barracks = Barracks.new
      initial_barracks_health = @barracks.health_points
      @siege_engine.attack!(@barracks)
      expect(@barracks.health_points).to eq(initial_barracks_health - @siege_engine.attack_points*2)
    end
  end

end



