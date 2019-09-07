class CashRegister 
  attr_accessor :total, :discount
  
  def initialize(discount=0)
    @total= 0
    @discount=discount
  end
  
  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end
  
  def apply_discount
    if @discount > 0
      total_with_discount = total-(discount.to_f/100*total)
      "After the discount, the total comes to #{total_with_discount}."
    else 
      "There is no discount to apply."
  end
  end
 
  
end

