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
    costs = find_prices(items)
    p costs
    total_cost =  costs.inject { |sum, n| sum + n }
    total_cost
  end

  def find_prices(items)
    item_prices = []
    items.each do |item|
      @prices.select do |key, value|
        if key == item
          item_prices << value
        end
      end
    end
    return item_prices
  end

end
