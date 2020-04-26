class CashRegister
  
  attr_accessor :total, :discount
  attr_reader :items
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity > 1 ? @total += (price * quantity) : @total += price
    quantity.times { @items << title }
    @latest_item = @total
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
    
  end
end
