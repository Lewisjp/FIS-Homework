require './collections_practice_2_works'
=begin
Collections Practice
Finish the first collections assignment if you haven't already.

Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.

These problems should get progressively more difficult.
=end

# Return true if every element of the tools array starts with an "r" and false otherwise.
# tools = ["ruby", "rspec", "rails"]

describe "#starts_with_r_test" do
  it "should return true if all array elements start with the letter r or R"
    starts_with_r_test(["ruby", "rspec", "rails"]).should eq(true)
  end

  it "should return false if any array elements start with the letter r or R"
    starts_with_r_test(["Jonathan Archer", "T'Pol", "Hoshi Sato"]).should eq(false)
  end

end



=begin
Create a new array from the captain_planet array with all the elements that contain the letter "a".  
  captain_planet = ["earth", "fire", "wind", "water", "heart"]

Identify the first element in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]

Identify all the elements in the stuff array that begins with the letters "wa".
  stuff = ["candy", :pepper, "wall", :ball, "wacky"]

Remove anything that's not a string from an array.
Hint: Use the method "class"  "blake".class

Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed types of objects inside it.

Count the number of times each word appears in a string and store that data in a hash that has the word as the key and the count as the value.

  string = "the flatiron school is better than general assembly"

Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each hash with the number of times it appears.
  [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
    becomes
  [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.

[
       {
        :first_name => "blake"
    },
       {
        :first_name => "ashley"
    }
]
and
[
       {
         "blake" => {
            :awesomeness => 10,
                 :height => "74",
              :last_name => "johnson"
        },
        "ashley" => {
            :awesomeness => 9,
                 :height => 60,
              :last_name => "dubs"
        }
    }
]

becomes
[
       {
         :first_name => "blake",
        :awesomeness => 10,
             :height => "74",
          :last_name => "johnson"
    },
       {
         :first_name => "ashley",
        :awesomeness => 9,
             :height => 60,
          :last_name => "dubs"
    }
]

Return all hashes that have a value of "cool" for the :temperature key.
[
        {
               :name => "ashley",
        :temperature => "sort of cool"
    },
        {
               :name => "blake",
        :temperature => "cool"
    }
]

Convert the nested data structure from it's current structure

{
  "flatiron school bk" => {
    :location => "NYC",
    :price => "free"
  },
  "dev boot camp" => {
    :location => "SF"
    :price => "a million dollars"
  },
  "dev boot camp chicago" => {
    :location => "Chicago",
    :price => "half a million dollars"
  },
  "general assembly" => {
    :location => "NYC",
    :price => "too much"
  },
  "some school in SF" => {
    :location => "SF",
    :price => "your soul"
  }
}
to a structure that organizes the schools by location.

=end