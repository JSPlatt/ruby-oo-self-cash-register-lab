class CashRegister
    attr_accessor :total, :discount, :items, :last_item

    def initialize(discount=nil, total=0, items =[])
        @discount = discount
        @total = total
        @items = items
    end

    def add_item(name, price, quantity)
        self.last_item = price * quantity
        self.total += (price * quantity)
        quantity.times {@items.push(name)}
    end
end
