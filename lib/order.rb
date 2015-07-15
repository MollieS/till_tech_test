class Order

  def initialize
    @items = []
  end

  def add(item)
   @items << item 
  end

  def view
    @items.each { |item| return item }
  end
end
