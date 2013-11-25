
# Collections Practice
# Finish the first collections assignment if you haven't already.

# Wrap each of these problems in a method, you can also write a test for each method if you'd like to practice testing.  All solutions should be generic and work for any "case" but sometimes a sample case is given.

# These problems should get progressively more difficult.


# Return true if every element of the tools array starts with an "r" and false otherwise.
# tools = ["ruby", "rspec", "rails"]


def starts_with_r_test(array)
  start_r = true
  array.each { |x| start_r = false if x[0] != ("r" || "R")}
  start_r
end

tools = ["ruby", "rspec", "rails"]
starts_with_r_test(tools)


# Create a new array from the captain_planet array with all the elements that contain the letter "a".  
#   captain_planet = ["earth", "fire", "wind", "water", "heart"]

def captain_a(arr)
  a_only_club = Array.new
  arr.each {|a| a_only_club << a if a.include?("a")}
  a_only_club
end
captain_a(["earth", "fire", "wind", "water", "heart"])

#Identify the first element in the stuff array that begins with the letters "wa".
#  stuff = ["candy", :pepper, "wall", :ball, "wacky"]

def first_wa(arr)
  first_wa_only = Array.new
  arr.each do |i|
    if i.is_a? String  #only evaluates strings
      if i[0] + i[1] == "wa" # only records the word starting with "wa"
        first_wa_only << i
        break # after getting the first word starting with "wa" stop loop
      end
    end
  end
  first_wa_only
end

stuff = (["candy", :pepper, "wall", :ball, "wacky"])
first_wa(stuff)

# Identify all the elements in the stuff array that begins with the letters "wa".
#  stuff = ["candy", :pepper, "wall", :ball, "wacky"]

def first_wa(arr)
  first_wa_only = Array.new
  arr.each do |i|
    if i.is_a? String  #only evaluates strings
      if i[0] + i[1] == "wa" # only records the word starting with "wa"
        first_wa_only << i
      end
    end
  end
  first_wa_only
end

stuff = (["candy", :pepper, "wall", :ball, "wacky"])
first_wa(stuff)


# Remove anything that's not a string from an array.
# Hint: Use the method "class"  "blake".class '

def string_only_array(arr)
  string_only_club = []
  arr.each { |i| string_only_club << i if i.class == String } 
  string_only_club
end

string_only_array(stuff)


# Change the third letter of all strings in an array.  Your solution should work for arrays that have mixed types of objects inside it.

def third_letter_change(arr, the_change)
  arr.each {|i| i[2] = the_change.to_s if i.class == String}
  arr
end

third_letter_change(stuff, 7)

# Count the number of times each word appears in a string and store that data in a hash that has the word as the key and the count as the value.

def word_count(sentence)
  general_count = Hash.new 
  count = 0
  sentence.split(" ").each do | word |
    if  general_count[word] == word
        general_count[word] += 1 
    else
        # general_count[word] = word
        general_count[word] = 1
    end
  end
  general_count
end 

string = "the flatiron school is better than general assembly"
puts word_count(string)


# Count the number of times each hash appears in the array, remove any duplicates and add a :count key to each hash with the number of times it appears.
#   [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#     becomes
#   [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

# Take two arrays of hashes and merge the first names and last names into a new array of hashes where each hash has all information about itself.

# [
#        {
#         :first_name => "blake"
#     },
#        {
#         :first_name => "ashley"
#     }
# ]
# and
# [
#        {
#          "blake" => {
#             :awesomeness => 10,
#                  :height => "74",
#               :last_name => "johnson"
#         },
#         "ashley" => {
#             :awesomeness => 9,
#                  :height => 60,
#               :last_name => "dubs"
#         }
#     }
# ]

# becomes
# [
#        {
#          :first_name => "blake",
#         :awesomeness => 10,
#              :height => "74",
#           :last_name => "johnson"
#     },
#        {
#          :first_name => "ashley",
#         :awesomeness => 9,
#              :height => 60,
#           :last_name => "dubs"
#     }
# ]

# Return all hashes that have a value of "cool" for the :temperature key.
# [
#         {
#                :name => "ashley",
#         :temperature => "sort of cool"
#     },
#         {
#                :name => "blake",
#         :temperature => "cool"
#     }
# ]

# Convert the nested data structure from it's current structure

# {
#   "flatiron school bk" => {
#     :location => "NYC",
#     :price => "free"
#   },
#   "dev boot camp" => {
#     :location => "SF"
#     :price => "a million dollars"
#   },
#   "dev boot camp chicago" => {
#     :location => "Chicago",
#     :price => "half a million dollars"
#   },
#   "general assembly" => {
#     :location => "NYC",
#     :price => "too much"
#   },
#   "some school in SF" => {
#     :location => "SF",
#     :price => "your soul"
#   }
# }
# to a structure that organizes the schools by location.
