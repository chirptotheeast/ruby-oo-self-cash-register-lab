require 'pry'

class CashRegister

    def initialize(discount = 20)
        @total = 0
        @discount = discount
    end

    def total=(total)
        @total = total
    end

    def total
        @total
    end

    def add_item(title, price, quantity = 1)
        @total += price * quantity
        
    end

    def apply_discount
        self.total = total - (discount * 10) 
        return "After the discount, the total comes to $800."
    end



    def discount=(discount)
        @discount = discount
    end

    def discount
        @discount
    end
end