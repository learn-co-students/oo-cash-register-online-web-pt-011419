require 'pry'

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = nil)
    @total = 0
    @discount = discount
    @@new_items = []
  end

  def add_item(title, price, quantity = 1)
    for each in (1..quantity)
      @@new_items << title
    end
    @last_transaction = price
    @total = @total + (price * quantity)
  end

  def apply_discount
    if @discount != nil
      @total = @total - (@total * (@discount * 0.01))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @@new_items
  end

  def void_last_transaction
    @total = @total - @last_transaction
  end

end
