require 'checkout'

describe Checkout do
  before(:each) do
   @shop = Checkout.new
  end

  it '1- should return -1' do
    expect(@shop.checkout('aBc')).to eq(-1)
  end
  it '2- should return -1' do
    expect(@shop.checkout('-B8x')).to eq(-1)
  end
  it '3- should return -1' do
    expect(@shop.checkout(18)).to eq(-1)
  end
  it '4- should return 100' do
    expect(@shop.checkout('AA')).to eq(100)
  end
  it '5- should return 115' do
    expect(@shop.checkout('ABCD')).to eq(115)
  end
end