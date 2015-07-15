require 'json'

class Till

  def initialize
    file = File.read('hipstercoffee.json')
    @cafe_details = JSON.parse(file)
    @prices = @cafe_details[0]['prices'][0]
  end

  def details
    @cafe_details
  end

  def total(order)
    items = order.view
    item_prices = []
    items.each do |item|
      @prices.select do |key, value|
        if key == item
          item_prices << value
        end
      end
    end
   cost =  item_prices.inject { |sum, n| sum + n }
   cost
  end
end
