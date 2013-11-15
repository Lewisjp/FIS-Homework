require_relative './number-guesser'

describe "#input" do
  it "returns false if an guess was out of range of 1 - 100" do
  	guess = 200
    tried_again = false
    answer = 50 
    input(answer, tried_again).should eq(false)
  end

  it "returns false if an guess was out of range of 1 - 100" do
  	guess = -1
    tried_again = false
    answer = 50 
    input(answer, tried_again).should eq(false)
  end

  it "returns false if an guess was out of range of 1 - 100" do
  	guess = 0
    tried_again = false
    answer = 50 
    input(answer, tried_again).should eq(false)
  end


  it "returns true if an valid guess was given" do
  	answer = 5
  	guess = answer
    tried_again = false
    prompt(guess, answer, tried_again).should eq(true)
  end

  it "returns false if an invalid guess was given" do
  	answer = 5
  	guess = 89
    tried_again = false
    prompt(guess, answer, tried_again).should eq(false)
  end
  
end