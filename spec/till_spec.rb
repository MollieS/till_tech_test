require_relative '../lib/till.rb'

describe Till do
  let(:order) { double :order }

  it { is_expected.to respond_to(:total).with(1).argument }

  context 'processing a new order' do
    allow(order).to receive(:view).and_return("Cafe Latte")
  end
end
