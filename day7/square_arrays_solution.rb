# Instructions:
# Return an array that contains the squares of all elements in an array?

def square_array(some_array)
  # code goes here
	new_array = Array.new

	some_array.each do |num|
		new_array << num * num
	end
	new_array
end

test_array = [2,3,4]

puts square_array(test_array)