require "pry" 
class CashRegister
  attr_accessor :discount, :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @previous_total = 0
    @last_item = 0
  end
  def add_item(title, price, quantity = 1)
    @previous_total = @total
    @total = @total + (price*(quantity))
    quantity.times do 
      @items << title
    end
    @last_item = price * quantity
  end
  def apply_discount
    if @discount != 0
      discount_amount = @total * (@discount/100.00)
      @total = @total - discount_amount
      @total = @total.to_i
      #binding.pry
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end 
  end
  def items 
    @items
  end
  def void_last_transaction
    @total = @total - @last_item
  end 
end