require_relative 'spec_helper'

describe Unit do

  describe '#dead?' do
  
    it "initiates as alive, or not dead" do
      @unit = Unit.new(20,20)
      expect(@unit.dead?).to eq(false)
    end

    it "dies when HP reaches 0 or lower" do
      @unit = Unit.new(20,20)
      @unit.damage(20)
      expect(@unit.dead?).to eq(true)
    end

  end

end