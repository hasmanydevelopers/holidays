# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/fr.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/fr'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module FR # :nodoc:
    DEFINED_REGIONS = [:fr]

    HOLIDAYS_BY_MONTH = {
      5 => [{:mday => 1, :name => "Fête du travail", :regions => [:fr]},
            {:mday => 8, :name => "Victoire 1945", :regions => [:fr]}],
      0 => [{:function => lambda { |year| Holidays.easter(year) }, :function_id => "easter(year)", :name => "Pâques", :regions => [:fr]},
            {:function => lambda { |year| Holidays.easter(year)+1 }, :function_id => "easter(year)+1", :name => "Lundi de Pâques", :regions => [:fr]},
            {:function => lambda { |year| Holidays.easter(year)+39 }, :function_id => "easter(year)+39", :name => "Ascension", :regions => [:fr]},
            {:function => lambda { |year| Holidays.easter(year)+49 }, :function_id => "easter(year)+49", :name => "Pentecôte", :regions => [:fr]},
            {:function => lambda { |year| Holidays.easter(year)+50 }, :function_id => "easter(year)+50", :name => "Lundi de Pentecôte", :regions => [:fr]}],
      11 => [{:mday => 1, :name => "Toussaint", :regions => [:fr]},
            {:mday => 11, :name => "Armistice 1918", :regions => [:fr]}],
      1 => [{:mday => 1, :name => "Jour de l'an", :regions => [:fr]}],
      12 => [{:mday => 25, :name => "Nöel", :regions => [:fr]}],
      7 => [{:mday => 14, :name => "Fête nationale", :regions => [:fr]}],
      8 => [{:mday => 15, :name => "Assomption", :regions => [:fr]}]
    }
  end


end

Holidays.merge_defs(Holidays::FR::DEFINED_REGIONS, Holidays::FR::HOLIDAYS_BY_MONTH)
