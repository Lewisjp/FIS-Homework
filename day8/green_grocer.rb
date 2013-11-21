
=begin
##Objectives: 
Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

Dr. Steve Bruhle, your green grocer, isn't ready, but you are!

##Skills: 
any?, all?, none?, each, map/collect

##Instructions:
Code generates a random cart of items and a random set of coupons. Implement a method checkout to calculate total cost of a cart of items and apply discounts and coupons as necessary.

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



def without_coups(cart)
	total = 0

#	puts cart.inspect

		cart.each_pair do | food, traits |
#			puts traits #=> {:price=>3.0, :clearance=>true, :count=>3}



			if  traits[:clearance] == true 
				traits[:price] =  (traits[:price] * 0.20) 
				total += traits[:price]
			elsif traits[:clearance] == false 
				total += traits[:price]
			end		



		end

	#	printf('%.2f',total) # this method only changes the output 
	#	puts total.round(2)

	total.round(2)
end


def with_coups(cart, cost)

	coups = generateCoups

#	puts coups.inspect # => [{:item=>"AVOCADO", :num=>2, :cost=>5.0}]

	coups.each do | coups_item |
#	puts coups_item # => {:item=>"BEER", :num=>2, :cost=>20.0}
#	puts coups[0][:item] #=> CHEESE

		cart.each_pair do | food, traits |
# 		puts traits #=> {:price=>3.0, :clearance=>true, :count=>3}


			if  coups[0][:item] == food
				if traits[:count] >= traits[:count]
					puts "hi"
				end
			end		
=begin   total - ((count/num) * (price * num - cost))

COUPS = [	{:item=>"AVOCADO", :num=>2, :cost=>5.00},
			{:item=>"BEER", :num=>2, :cost=>20.00},
			{:item=>"CHEESE", :num=>3, :cost=>15.00}]


=end
#			
		end
	end


	#	printf('%.2f',total) # this method only changes the output 
	#	puts total.round(2)

	cost.round(2)
end





def cart_total(cart)

#the cart is currently an array of individual items, translate it into a hash that includes the counts for each item

	record_cart = Hash.new
	current_item = 0


	cart.each do |arr|  # this is a hash in an array 
#		puts arr #{"TEMPEH"=>{:price=>3.0, :clearance=>true} }
		arr.each_pair do | item, traits |
#		puts item => food
#		puts traits => {:price=>2.5, :clearance=>false, :count=>1}
	

				#if the card includes th food item, add 1 to counter
				if record_cart.include?(item)
					record_cart[item][:count] += 1
				else
					#if the counter hash does not have the good item, add it with :count
					record_cart[item]= traits					
					record_cart[item][:count] = 1
				end

		end
	end

	record_cart
end 



current = cart_total(generateCart)
cost  = without_coups(current)
cost = with_coups(current, cost)