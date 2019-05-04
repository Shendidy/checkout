class Checkout
  def initialize
    @list_prices = {"A" => 50, "B" => 30, "C" => 20, "D" => 15}
    @special_offers = {"3A" => 130, "2B" => 45}
    @price = 0
  end

  def checkout(list)
    list = adjust_offers(list)
    list.each{ |item|
      return -1 unless @list_prices.include? item
      @price += @list_prices[item]
    }
    @price
  end

  private

  def adjust_offers(list)
    list = list.to_s.split("").sort()
    countA = list.count("A")
    @price += countA / 3 * 130
    list.delete("A")
    (countA % 3).times { list << "A" }

    countB = list.count("B")
    @price += countB / 2 * 45
    list.delete("B")
    (countB % 2).times { list << "B"}

    puts list

    list
  end
end