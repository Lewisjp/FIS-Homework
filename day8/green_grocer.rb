
=begin
##Objectives: 
Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

Dr. Steve Bruhle, your green grocer, isn't ready, but you are!

##Skills: 
any?, all?, none?, each, map/collect

##Instructions:
Code generates a random cart of items and a random set of coupons. Implement a method checkout to calculate total cost of a cart of items and apply discounts and coupons as necessary.

##Code:

```ruby
#ITEMS = [  {"AVOCADO" => {:price => 3.00, :clearance => true}},
#			{"KALE" => {:price => 3.00,:clearance => false}},
#			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
#			{"ALMONDS" => {:price => 9.00, :clearance => false}},
#			{"TEMPEH" => {:price => 3.00,:clearance => true}},
#			{"CHEESE" => {:price => 6.50,:clearance => false}},
#			{"BEER" => {:price => 13.00, :clearance => false}},
#			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
#			{"BEETS" => {:price => 2.50,:clearance => false}}]
#
#COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
#			{:item=>"BEER", :num=>2, :cost=>20.00},
#			{:item=>"CHEESE", :num=>3, :cost=>15.00}]
#
##randomly generates a cart of items
#def generateCart
#	cart = []
#	rand(20).times do
#		cart.push(ITEMS.sample)  
#	end
#	cart
#end
#
##randomly generates set of coupons
#def generateCoups
#	coups = []
#	rand(2).times do
#		coups.push(COUPS.sample)
#	end
#	coups
#end
#
#
  For example if your cart was [  {"AVOCADO" => {:price => 3.00, :clearance => true}}, {"AVOCADO" => {:price => 3.00, :clearance => true}}]
  it would become {"AVOCADO" => {:price => 3.00, :clearance => true}, :count => 2}
##create a checkout method that calculates the total cost of the cart
##when checking out, check the coupons and apply the discount if the proper number of items is present
##if any of the items are on clearance add a 20% discount
##if the customer has 2 of the same coupon, triple the discount

##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart  ????????????

```
##Reward
https://www.youtube.com/watch?v=-RuSCACXmXs

=end


ITEMS = [  	{"AVOCADO" => {:price => 3.00, :clearance => true}},
			{"KALE" => {:price => 3.00,:clearance => false}},
			{"BLACK_BEANS" => {:price => 2.50,:clearance => false}},
			{"ALMONDS" => {:price => 9.00, :clearance => false}},
			{"TEMPEH" => {:price => 3.00,:clearance => true}},
			{"CHEESE" => {:price => 6.50,:clearance => false}},
			{"BEER" => {:price => 13.00, :clearance => false}},
			{"PEANUTBUTTER" => {:price => 3.00,:clearance => true}},
			{"BEETS" => {:price => 2.50,:clearance => false}}]

COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
			{:item=>"BEER", :num=>2, :cost=>20.00},
			{:item=>"CHEESE", :num=>3, :cost=>15.00}]

##randomly generates a cart of items

def generateCart
	cart = []
	rand(20).times do
		cart.push(ITEMS.sample)  
	end
	cart
end

##randomly generates set of coupons

def generateCoups
	coups = []
	rand(2).times do
		coups.push(COUPS.sample)
	end
	coups
end

def cart_total(cart)

#the cart is currently an array of individual items, translate it into a hash that includes the counts for each item
	cart.each { |x| x [:count] = 0 }

=begin
[
{"AVOCADO"=>{:price=>3.0, :clearance=>true}, :count=>0}, 
{"KALE"=>{:price=>3.0, :clearance=>false}, :count=>0}, 
... 
]
=end

	total = 0
	current_item = 0

	cart.each do |arr|  # this is a hash in an array 
#		puts arr #{"TEMPEH"=>{:price=>3.0, :clearance=>true}, :count=>0}
		arr.each_pair do | item, traits |
			1.times do
				arr[:count] += 1 # => BEER count !! output is twice as much as it should be
			end

#			puts traits # => {:price=>3.0, :clearance=>true} 0 // 0 is for count
#			puts traits[:clearance]

=begin

			if  traits[:clearance] == true 
				traits[:price] =  ((traits[:price] * 80) / 100) + ((traits[:price] * 80) % 100)
				total += traits[:price]
			elsif traits[:clearance] == false 
				total += traits[:price]

			end		

=end

		end
	end
#	printf('%.2f',total) # this method only changes the output 
	total.round(2)

end 


def coups_total(coups)
	puts "coups"

end 


cart_total(generateCart) 

