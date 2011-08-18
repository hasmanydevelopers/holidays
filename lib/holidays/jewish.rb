# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/jewish.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/jewish'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module Jewish # :nodoc:
    DEFINED_REGIONS = [:jewish]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 10, :name => "Israel Independence Day", :regions => [:jewish]}],
      0 => [{:function => lambda { |year| Holidays.rosh_hashanah(year) }, :function_id => "rosh_hashanah(year)", :name => "New Year (Rosh Hashanah)", :regions => [:jewish]},
            {:function => lambda { |year| Holidays.rosh_hashanah(year)+9 }, :function_id => "rosh_hashanah(year)+9", :name => "Day of atonement (Yom Kippur)", :regions => [:jewish]},
            {:function => lambda { |year| Holidays.rosh_hashanah(year)+14 }, :function_id => "rosh_hashanah(year)+14", :name => "Sukkot", :regions => [:jewish]},
            {:function => lambda { |year| Holidays.rosh_hashanah(year)+15 }, :function_id => "rosh_hashanah(year)+15", :name => "Shemini Atzeret", :regions => [:jewish]},
            {:function => lambda { |year| Holidays.rosh_hashanah(year)+16 }, :function_id => "rosh_hashanah(year)+16", :name => "Simchat Torah", :regions => [:jewish]},
            {:function => lambda { |year| Holidays.rosh_hashanah(year)+83 }, :function_id => "rosh_hashanah(year)+83", :name => "Chanukah", :regions => [:jewish]},
            {:function => lambda { |year| Holidays.passover(year) }, :function_id => "passover(year)", :name => "Passover", :regions => [:jewish]}],
      3 => [{:mday => 20, :name => "Festival of Lots (Purim)", :regions => [:jewish]}]
    }
  end

# calculate rosh hashanah given year in gregorian calendar valid for years (1900..2099)
def self.rosh_hashanah( year )
  y = year - 1900
  g = y%19+1

  rem = ((12*g) % 19)

  n = 6.057778996 + 1.554241797*rem + 0.25*(y%4) - 0.003177794*y

  d = Date.civil( y, 9, n.floor )

  frac = n-n.floor

  d += 1 if d.wday == 0 or d.wday == 3 or d.wday == 5
  d += 1 if d.wday == 1 and frac >= 0.898 and rem > 11
  d += 2 if d.wday == 2 and frac >= 0.633 and rem > 6

  d
end


def self.passover( year )
  rh = rosh_hashanah( year )
  n = rh.mday
  n += 30 if rh.month == 10

  d = Date.civil( year+1, 3, 21 )
  d += (n-1)
  d
end



end

Holidays.merge_defs(Holidays::Jewish::DEFINED_REGIONS, Holidays::Jewish::HOLIDAYS_BY_MONTH)
