require './remove_nils_solution'
# prereqs arrays, methods, conditional logic, chaining
# Stop this code from throwing an exception. 

describe "#some_method" do

	it "returns the input array squared" do
		expect(some_method).to be_a_kind_of(Numeric)
    end

    it "should return an array in which new elements are the square of the original elements" do 
        expect{some_method}.to_not raise_exception
    end

end

=begin
def some_method
  [1, 4, nil, 9, 16, nil].compact.inject(0) {|sum, number| sum + number}
end





=end

