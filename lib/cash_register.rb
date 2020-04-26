class CashRegister
  
  attr_accessor :total, :discount, :last_item_amount, :items
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity > 1 ? @total += (price * quantity) : @total += price
    quantity.times { @items << title }
    @last_item_amount = price * quantity
  end
  
  def apply_discount
   if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_item_amount
  end
end
