require 'order_store'
require 'order'

describe '#register_order' do
  it 'registers an order' do
    order_store = Order_Store.new
    order1 = Order.new('user1',1,300,'BUY')
    p order1
    p @stored_orders
    order1.register_order
    expect(@stored_orders).to include ['user1',1,300,'BUY']
  end
end
