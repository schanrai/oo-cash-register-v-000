#Add items of varying quantities and prices
#Calculate discounts
#Keep track of what's been added to it
#Void the last transaction

##The apply_discount requires some knowledge about working with an Integer versus a Float in Ruby. Note that 100.class returns Integer while 100.0.class returns Float.
#Ruby provides methods for changing an object of type Integer to a Float and vice versa.
require'pry'
class CashRegister

  attr_accessor :total,:discount,:last_transaction
#why don't you need amount and title defined as well as the attributes above? there is no behaviour ofr funcitonality to price or title they are sttic d[ieces of data ]

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end


  def add_item (title, amount, quantity =1)
    self.total += quantity * amount
  end

  def apply_discount
    self.total * ((100.00 - discount) / 100.00)
  end

end


=begin
#why do you need to keep track of items in shopping bag?
  def add_item(title, amount, quantity=1)
+    self.total += amount * quantity
+    quantity.times do
+      items << title
+    end
+    self.last_transaction = amount * quantity
+  end

=end
