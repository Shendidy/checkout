require 'checkout'

describe Checkout do
  shop = Checkout.new
  it '1- should return -1' do
    expect(shop.checkout('aBc')).to eq(-1)
  end
  it '2- should return -1' do
    expect(shop.checkout('-B8x')).to eq(-1)
  end
  it '3- should return -1' do
    expect(shop.checkout(18)).to eq(-1)
  end
  it '4- should return 100' do
    expect(shop.checkout('AA')).to eq(100)
  end
end