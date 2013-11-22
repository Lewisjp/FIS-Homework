=begin
##Objectives: 
Create a checkout method to calculate the total cost of a cart of items and apply discounts and coupons as necessary.

##if the customer has 2 of the same coupon, triple the discount

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
				##if any of the items are on clearance add a 20% discount
				traits[:price] =  (traits[:price] * 0.80).round(2) 
				total += traits[:price]
			elsif traits[:clearance] == false 
				total += traits[:price]
			end		



		end


	total.round(2)
end 

#create a checkout method that calculates the total cost of the cart
def checkout(cart, total_w_c)

	unit_price_greater_five = false
	coups = generateCoups
	savings = 0

#	puts coups.inspect # => [{:item=>"AVOCADO", :num=>2, :cost=>5.0}]

	coups.each do | coups_item |
#	puts coups_item # => {:item=>"BEER", :num=>2, :cost=>20.0}
#	puts coups[0][:item] #=> CHEESE

		cart.each_pair do | food, traits |
# 		puts traits #=> {:price=>3.0, :clearance=>true, :count=>3}


			if  coups[0][:item] == food
				##when checking out, check the coupons and apply the discount if the proper number of items is present
				if traits[:count] >= coups[0][:num]
					savings += ((traits[:count]/coups[0][:num]) * (traits[:price]-coups[0][:cost]))
				end
			end		
			
			##if none of the items purchased have a unit price greater than 5$ give the customer a 10$ discount off the whole cart
			if traits[:count] * traits[:price] > 5
				unit_price_greater_five = true
			end


		end
	end
	if unit_price_greater_five == false
		total_w_c -= 10
		puts "None of the items purchased have a unit price greater than $5"
		puts "You got a $10 discount."
	end	
#	puts cart.inspect
	puts "Your original total was $#{total_w_c}." if savings != 0 
	total_w_c += savings 
	puts "Your coupon savings for today is $#{savings.abs}" if savings != 0
	puts total_w_c.round(2)
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
final_cost = checkout(current, cost)