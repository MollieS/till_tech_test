require 'json'
class Till

  def initialize
    file = File.read('../hipstercoffee.json')
    @cafe_details = JSON.parse(file)
  end

  def total(order)
  end
end
