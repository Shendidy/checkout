require 'checkout'

describe Checkout do
  shop = Checkout.new
  it '1- should return -1' do
    expect(shop.checkout('aBc')).to eq(-1)
  end
end