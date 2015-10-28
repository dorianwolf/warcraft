require_relative 'spec_helper'

describe Unit do

  before :each do
    @dead_unit = Unit.new(20, 20)
    @dead_unit.damage(20)
    @live_unit = Unit.new(20, 20)
  end

  it 'cannot attack when dead' do
    @dead_unit.attack!(@live_unit)
    expect(@live_unit.health_points).to eq 20
  end

  it 'cannot attack a dead unit' do
    # @live_unit.attack!(@dead_unit)
    expect(@live_unit.attack!(@dead_unit)).to be nil
  end

end