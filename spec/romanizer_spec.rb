# frozen_string_literal: true

RSpec.describe Romanizer do
  it "converts integers to Roman numerals" do
    expect(Romanizer.to_roman(42)).to eq("XLII")
    expect(Romanizer.to_roman(1994)).to eq("MCMXCIV")
    expect(Romanizer.to_roman(2024)).to eq("MMXXIV")
  end

  it "converts Roman numerals to integers" do
    expect(Romanizer.to_integer("XLII")).to eq(42)
    expect(Romanizer.to_integer("MCMXCIV")).to eq(1994)
    expect(Romanizer.to_integer("MMXXIV")).to eq(2024)
  end

  it "validates Roman numerals" do
    expect(Romanizer.valid_roman?("XLII")).to be true
    expect(Romanizer.valid_roman?("INVALID")).to be false
  end

  it "raises an error for invalid numbers" do
    expect { Romanizer.to_roman(0) }.to raise_error(ArgumentError)
    expect { Romanizer.to_roman(4000) }.to raise_error(ArgumentError)
  end
end
