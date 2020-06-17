class CashRegister
  
  attr_accessor :discount, :total, :items, :last_transaction
  
  
  
  def initialize(discount = 0)
   @discount = discount
   @total =  0
   @items = []
  end
  
  def total 
    @total 
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
    self.items << title
    self.last_transaction = @total
    end
  end
  
  def apply_discount
    if discount != 0
    @total = @total - @total * discount/100
     "After the discount, the total comes to $#{@total}."
   else 
     "There is no discount to apply."
  end
  end
  
  def items 
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
  
end


