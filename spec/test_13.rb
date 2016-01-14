require_relative 'spec_helper'

describe Barracks do 

  before do 
    @barracks = Barracks.new
  end

  describe "#lumber" do
    it "Should be initialized with 500 lumber" do
      expect(@barracks.lumber).to eq(500)
    end
  end
  
end
  