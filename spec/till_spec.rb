require_relative '../lib/till.rb'

describe Till do
  let(:order) { double :order }

  it { is_expected.to respond_to(:total).with(1).argument }

  context 'processing a new order' do
    
    it 'should return the price of an item' do
      allow(order).to receive(:view).and_return(["Cafe Latte"])
      expect(subject.total(order)).to eq(4.75)
    end

    it 'should return the total price of multiple items' do
      allow(order).to receive(:view).and_return(["Cafe Latte", "Blueberry Muffin"])
      expect(subject.total(order)).to eq(8.80)
    end

    
  end
end
