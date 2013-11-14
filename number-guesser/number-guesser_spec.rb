require_relative './number-guesser'

describe "#input" do
  it "returns false if an guess was out of range of 1 - 100" do
  	guess = 200
    input.should eq(false)
  end

  it "returns false if an guess was out of range of 1 - 100" do
  	guess = -1
    input.should eq(false)
  end

  it "returns false if an guess was out of range of 1 - 100" do
  	guess = 0
    input.should eq(false)
  end


  it "returns true if an valid guess was given" do
  	answer = 5
  	guess = answer
    prompt(guess, answer).should eq(true)
  end

  it "returns false if an invalid guess was given" do
  	answer = 5
  	guess = 89
    prompt(guess, answer).should eq(false)
  end
  
end