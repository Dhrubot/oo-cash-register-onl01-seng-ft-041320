class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize(employee_discount = 0)
    @total = 0
    @discount = employee_discount
    @items = []
  end
  
  def add_item(title, price, quantity = 1)
    quantity > 1 ? @total += (price * quantity) : @total += price
  end
  
  def apply_discount
    if @discount > 0 
      @discount = (@discount/100).to_f
      @total = @total - (@total * @discount)
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
end
