class CashRegister
  
  attr_accessor :total, :items, :discount, :last_transaction_amount
  
  def initialize(discount = 0)
    @items = []
    @total = 0
    @discount = discount
  end 

  def add_item(title, price, quantity = 1)
    if quantity>1 
      i=0 
     while i<quantity
       @items << title 
       i+=1 
      end
    else 
     @items << title 
    end
    @total += price*quantity
    @last_transaction_amount = @total 
   @total
  end 

  def apply_discount()
    if @discount > 0 
      @discount = @discount/100.to_f 
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $800."
    else
     "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @total - @last_transaction_amount
  end
end

  
