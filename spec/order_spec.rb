require_relative '../lib/order.rb'

describe Order do
  it { is_expected.to respond_to(:add).with(1).argument }

  it 'adds an item' do
    subject.add("Cafe Latte")
    expect(subject.view).to eq(["Cafe Latte"])
  end

  it 'can add multiple items' do
    subject.add("Cafe Latte")
    subject.add("Blueberry Muffin")
    expect(subject.view).to eq(["Cafe Latte", "Blueberry Muffin"])
  end
end
