require 'roman_numbers'

describe "toRomanNumerals" do
  it "converts all numbers" do
    toRomanNumerals(3).should == 'III'
    toRomanNumerals(4).should == 'IV'
    toRomanNumerals(5).should == 'V'
    toRomanNumerals(8).should == 'VIII'
    toRomanNumerals(14).should == 'XIV'
  end
  it "covers edge case with 9" do
    toRomanNumerals(9).should == 'IX'
    toRomanNumerals(19).should == 'XIX'
    toRomanNumerals(49).should == 'XLIX'
    toRomanNumerals(91).should == 'XCI'
    toRomanNumerals(929).should == 'CMXXIX'
  end
end
describe "parseRomanNumerals" do
  it "converts all numbers" do
    parseRomanNumerals('III').should == 3
    parseRomanNumerals('IV').should == 4
    parseRomanNumerals('V').should == 5
    parseRomanNumerals('VIII').should == 8
    parseRomanNumerals('XIV').should == 14
    parseRomanNumerals('XLIX').should == 49
    parseRomanNumerals('CMXXIX').should == 929
  end
end