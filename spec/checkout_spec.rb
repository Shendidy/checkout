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
  it '6- should return 130' do
    expect(@shop.checkout('AAA')).to eq(130)
  end
  it '7- should return 260' do
    expect(@shop.checkout('AAAAAA')).to eq(260)
  end
  it '8- should return 175' do
    expect(@shop.checkout('AAABB')).to eq(175)
  end
  it '9- should return 305' do
    expect(@shop.checkout('ABABABAA')).to eq(305)
  end
end