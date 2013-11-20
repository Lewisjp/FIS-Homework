require './square_arrays_solution'

describe "#square_array" do
	it "returns the input squared" do
		square_array([2]).should eq([4])
	end

	it "output is an integer" do
		expect(square_array([1,2,3])).to match_array([1,4,9])
    end

end

=begin
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
=end