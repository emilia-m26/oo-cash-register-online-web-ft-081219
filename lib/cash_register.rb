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
    if @discount == 0
      "There is no discount to apply."
    else 
      total_with_discount = self.total-(self.discount.to_f/100*self.total)
      "After the discount, the total comes to #{total_with_discount}."
    end
  end
  
        #     @total = self.total * (1-(self.discount/100.0))
        #     "After the discount, the total comes to $#{@total.to_i}."
        # end
 
  
end

