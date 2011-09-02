# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/christian.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/christian'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module Christian # :nodoc:
    DEFINED_REGIONS = [:christian]

    HOLIDAYS_BY_MONTH = {
      0 => [{:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :logic => "Day after Easter", :name => "Easter Monday", :regions => [:christian]},
            {:function => lambda { |year| Holidays.easter(year)-2 }, :function_id => "easter(year)-2", :logic => "Two days before Easter", :name => "Good Friday", :regions => [:christian]},
            {:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :logic => "Sunday after Paschal Full Moon", :name => "Easter Sunday", :regions => [:christian]}],
      12 => [{:mday => 24, :logic => "December 24th", :name => "Christmas Eve", :regions => [:christian]},
            {:mday => 25, :logic => "December 25th", :name => "Christmas Day", :regions => [:christian]}]
    }
  end


end

Holidays.merge_defs(Holidays::Christian::DEFINED_REGIONS, Holidays::Christian::HOLIDAYS_BY_MONTH)
