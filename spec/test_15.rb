require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
  end

  describe "#initialize" do
    it "starts out with 50 AP and 400 HP" do
      expect(@siege_engine.health_points).to eq(400)
      expect(@siege_engine.attack_power).to eq(50)
    end

    it "is a Unit" do
      expect(@siege_engine).to be_a Unit
    end
  end

  describe "#attack!" do
    it "can not attack another Unit" do
      @peasant = Peasant.new
      @siege_engine.attack!(@peasant)
      expect(@peasant.health_points).to eq(35)
    end

    it "can attack other seige engines and deal 50 damage" do
      @other_siege_engine = SiegeEngine.new
      @siege_engine.attack!(@other_siege_engine)
      expect(@other_siege_engine.health_points).to eq(350)
    end

    it "can attack barracks and deals them twice the damage" do
      @barracks = Barracks.new
      @siege_engine.attack!(@barracks)
      expect(@barracks.health_points).to eq(400)
    end
  end

end