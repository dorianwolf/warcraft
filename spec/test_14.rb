require_relative 'spec_helper'

describe Barracks do

  it "starts off with 500 lumber resources" do
    expect(Barracks.new.lumber).to eq(500)
  end

end