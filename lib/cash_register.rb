class CashRegister
  
  attr_accessor :total, :discount :items
  @items = []
  @items_with_price = {}
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
  end
  
  
  def add_item(title, price, qty=1)
    @total += (price * qty)
    @items << (title * qty)
  end
=begin    
    @items.push(title * qty)
    if @items_with_price.include?(title)
      @items_with_price[title] = @items_with_price[title] += qty
    else
      @items_with_price[title] = qty
    end
=end
  
  
  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else
      @total = @total * ((100 - @discount).to_f/100)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
  
end
