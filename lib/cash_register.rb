require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items_array

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
        @price = 0 
        @quantity = 0
    end

    def add_item(x, price, quantity = 1)
        @price = price
        @quantity = quantity
        @total += price * quantity
        quantity.times do
        @items << x
        end
       
    end


    def apply_discount
        if self.discount != 0
            self.total = total - (@discount * 10) 
            #binding.pry
            return "After the discount, the total comes to $#{total}."
        else 
             return "There is no discount to apply."
        end
       
    end


    def items
        @items 
    end


    def void_last_transaction 
       
       @total -= @price * @quantity
       # .99              1.76     1      
       #total = total - (price * quantity)
        #binding.pry
    end
 
    # def discount=(discount)
    #     @discount = discount
    # end

    # def discount
    #     @discount
    # end


    # def total=(total)
    #     @total = total
    # end

    # def total
    #     @total
    # end

end