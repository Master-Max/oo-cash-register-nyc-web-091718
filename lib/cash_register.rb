require "pry"
class CashRegister
  attr_accessor :total

  def initialize
    @total = 0
  end

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item(item, price, quantity=1)
    quantity.times do
      @items << item
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * (@discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = 0.0
  end
end
