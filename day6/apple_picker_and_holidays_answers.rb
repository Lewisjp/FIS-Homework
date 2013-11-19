#1. 
def apple_picker(array)
  picked_apples = Array.new
  array.each { |yum| picked_apples << "apple" if yum == "apple"}

end

basket = ["apple", "orange", "apple"]
apple_picker(basket)

#Challenge
basket.select {|yum| yum == "apple"}
#=> ["apple", "apple"] 

basket.collect {|yum| yum == "apple"}
#=> [true, false, true]
=begin

Differences:\n.collect gives a boolean value or true or false for its condition.\n.select will act on the conditional by creating a new array holding the resulting values.  For example "yum == 'apple'" will result in an array that has an index per "apple" found.

Similarities: Both .collect and .select methods create an array holding their results, and require the use of ! (bang) to make permanent changes to the original array.

=end
# Holiday Suppliers


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

#1. How would you access the second supply for the forth_of_july?
#ex: `holiday_supplies[:spring][:memorial_day][0]`
holiday_supplies[:summer][:forth_of_july][1]

#2. Add a supply to a Winter holiday.
holiday_supplies[:winter][:new_years] << "Vodka"


#3. Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "Beer" 

#4. Add a new holiday to any season with supplies.
holiday_supplies[:fall][:halloween] = ["Jack-o-Lantern", "candy"]

#5. Write a method to collect all Winter supplies from all the winter holidays.
#ex: `winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]`

def supplies_for_holiday(season, nested_hash)
  nested_hash[season].each_pair do |key, value|
    # for :winter => christmas, new_years
      value.each do |supply|
        puts supply
      end
  end
end

supplies_for_holiday(:winter, holiday_supplies )



#6. Write a loop to list out all the supplies you have for each holiday and the season.

def each_holiday_supply(nested_hash)
  nested_hash.each_pair do |key, value|
    puts "\n#{key}:"
      value.each_pair do |holiday, supply|
          temp = supply.join (" and ")  #.join returns the elements as a string 
          puts "  #{holiday}: " + temp
      end
  end
end

each_holiday_supply(holiday_supplies)

=begin
Output:
```
Winter:
  Christmas: Lights and Wreath
  New Years: Party Hats
```

7. Write a method to collect all holidays with BBQ.

`holidays_with_bbqs(holiday_supplies) #=> [:fourth_of_july, :memorial_day]`


=end


def holidays_with_bbqs(nested_hash)
  bbq_holidays = Array.new

  nested_hash.each_pair do |key, value|
      value.each_pair do |holiday, supply|
        if supply.include? ("BBQ")
          bbq_holidays << holiday
        end
      end
  end
  bbq_holidays
  #=> [:forth_of_july, :memorial_day]
end

holidays_with_bbqs(holiday_supplies)




