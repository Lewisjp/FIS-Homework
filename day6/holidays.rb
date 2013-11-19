=begin
# Apple Picker

## Instructions

Create a method, `apple_picker`, that will pick all the apples out of an array. Implement this only using `each`.

```ruby
apple_picker(["apple", "orange", "apple"]) #=> ["apple", "apple"]
```
=end

def apple_picker(array)
  picked_apples = Array.new
  array.each { |yum| picked_apples << "apple" if yum == "apple"}

end

basket = ["apple", "orange", "apple"]
apple_picker(basket)

## Challenge
#Implement it with `collect` and then implement it with `select`. Write a sentence about how `select` differs from `collect`.

basket.select {|yum| yum == "apple"}
#=> ["apple", "apple"] 

basket.collect {|yum| yum == "apple"}
#=> [true, false, true]

Differences:\n.collect gives a boolean value or true or false for its condition.\n.select will act on the conditional by creating a new array holding the resulting values.  For example "yum == 'apple'" will result in an array that has an index per "apple" found.

Similarities: Both .collect and .select methods create an array holding their results, and require the use of ! (bang) to make permanent changes to the original array.
 

# Holiday Suppliers

You have a bunch of decorations for various holidays organized by season.

```ruby
holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}
```
## Questions

1. How would you access the second supply for the forth_of_july?
ex: `holiday_supplies[:spring][:memorial_day][0]`

2. Add a supply to a Winter holiday.

3. Add a supply to memorial day.

4. Add a new holiday to any season with supplies.

5. Write a method to collect all Winter supplies from all the winter holidays.
ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

6. Write a loop to list out all the supplies you have for each holiday and the season.

Output:
```
Winter:
  Christmas: Lights and Wreath
  New Years: Party Hats
```

7. Write a method to collect all holidays with BBQ.

`holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`
=end