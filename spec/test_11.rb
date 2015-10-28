require 'pry'
require_relative 'spec_helper'

describe Barracks do

  describe 'initialization' do 

    it "has an initial HP of 500 that is readable" do
      @barracks = Barracks.new
      expect(@barracks.health_power).to eq(500)
    end
  end

  describe '#damage' do

    it "takes damage that is equal to half the attack power" do
      @barracks = Barracks.new
      @barracks.damage(40)
      expect(@barracks.health_power).to eq(480)
    end

  end

end