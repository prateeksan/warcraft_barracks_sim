require_relative 'spec_helper'
describe Barracks do 
  before :each do
    @barracks = Barracks.new
  end
  describe "#train_siege_engine" do 
    it "should return a seige engine and deplete 200 gold, 60 lumber and 3 food" do 
      expect(@barracks.train_siege_engine).to be_a(SiegeEngine)
    end
  end
  describe "#can_train_siege_engine?" do
    it "should return nil if there are inadequate resources" do 
      allow(@barracks).to receive(:gold).and_return(199)
      expect(@barracks.train_siege_engine).to eq(nil)
    end
  end
end