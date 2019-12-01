class CashRegister

  attr_accessor :amount, :discount, :name, :total

  @@total = []

  def initialize(discount = 0)
    @@all = []
    @discount = discount
    @total = 0
  end

  def total
    @@total.each do |total|
      @total += total
    end
      @total
  end

  def add_item(title, price, quantity = 1)
    @price = price
    @total += (price*quantity)
    @@total << @total
  end

  def void_last_transaction
     @total -= @price
  end
end
