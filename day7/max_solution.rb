# prereqs arrays, methods, conditional logic
# part I. implement a maximum method that takes and array and returns the largest element of the array
# part II. reimplement this method as an instance method on the array class

def maximum(arr)
	max_num = 0
	temp_num = 0
	arr.each do |current_num|
		if current_num > max_num
			max_num = current_num
		end
	end
	max_num
end

test_array = [2,56,7]
maximum(test_array)

# now rewrite this as a method on the array class
class Array
  def maximum
	max_num = 0
	temp_num = 0
	self.each do |current_num|
		if current_num > max_num
			max_num = current_num
		end
	end
	max_num
  end
end

test_second_array = [23,5543,3]
test_second_array.maximum