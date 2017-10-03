require 'ranges'
RSpec.describe "Ranges" do
  it "should leave non-consecutive numbers intact" do
    expect(ranges([1,3,5])).to eq [1,3,5]
  end

  it "should collapse consecutive numbers to a range" do
    expect(ranges([1,2,3])).to eq ["1-3"]
  end

  it "should keep separate ranges distinct" do
    expect(ranges([1,2,3,5,6,7,100,101])).to eq ["1-3","5-7","100-101"]
  end
end
