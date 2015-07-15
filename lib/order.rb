class Order

  def initialize
    @items = []
  end

  def add(item)
   @items << item 
  end

  def view
    @items
  end
end
