class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, count = 1)
    @total += price*count
    count.times do
      @items << item
    end
    @last_transaction = [item, price, count]
  end

  def apply_discount
    if @discount != 0
      @total = @total - (@total * @discount/100)
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @last_transaction[2].times {|remove| @items.pop}
    refund = @last_transaction[1]*@last_transaction[2]
    @total -= refund
  end
end
