require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  holiday_hash[:spring][:memorial_day][0]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]=["Lights", "Wreath", "Balloons"]
  holiday_hash[:winter][:new_years]=["Party Hats", "Balloons"]
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day]=["BBQ", "Grill", "Table Cloth"]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_hash|
    puts "#{season.to_s.capitalize}:"
      holiday_hash.each do |holiday, supplies|
        capitalized_holiday = holiday.to_s.split('_').each {|i| i.capitalize!}.join(' ')
          puts "  #{capitalized_holiday}: #{supplies.join(', ')}"
      end
  end
end

# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |seasons, holidays|
    holiday_hash[seasons].each do |holidays, supplies|
      holiday_hash[seasons][holidays].each do |supplies|
        if supplies == "BBQ"
          bbq_holidays << holidays
        end
      end
    end
  end
return bbq_holidays
end
