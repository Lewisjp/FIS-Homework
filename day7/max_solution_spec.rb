require './max_solution'


# part I. implement a maximum method that takes and array and returns the largest element of the array

describe "#maximum" do
	it "returns the largest number within an array" do
		maximum([2,4,5,9]).should eq(9)
	end

	it "returns the input array squared" do
		expect(maximum([12,23,5])).to eql(23)
    end

    it "should recognize the output as a type of number" do
    	expect(maximum([2,4,5,9])).to be_a_kind_of(Numeric)
    end


end


# part II. reimplement this method as an instance method on the array class

describe Array, "#maximum" do
	it "returns the largest number within an array" do
		maximum([2,4,5,9]).should eq(9)
	end

	it "returns the input array squared" do
		expect(maximum([12,23,5])).to eql(23)
    end

    it "should recognize the output as a type of number" do
    	expect(maximum([2,4,5,9])).to be_a_kind_of(Numeric)
    end


end
