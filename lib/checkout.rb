class Checkout
  def initialize
    @list_prices = {"A" => 50, "B" => 30, "C" => 20, "D" => 15}
    @price = 0
  end

  def checkout(list)
    list.to_s.split('').each{ |item|
      return -1 unless @list_prices.include? item
      @price += @list_prices[item]
    }
    @price
  end
end