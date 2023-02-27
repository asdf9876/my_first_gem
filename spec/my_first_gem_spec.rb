# frozen_string_literal: true


RSpec.describe MyFirstGem do
  it "has a version number" do
    expect(MyFirstGem::VERSION).not_to be nil
  end

  # TODO: MOVE EXPECTED VERSION INTO CONFIG/ENV
  it "has version number 0.1.0" do
    expect(MyFirstGem::VERSION).to.eql?('0.1.0')
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
