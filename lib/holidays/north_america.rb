# encoding: utf-8
module Holidays
  # This file is generated by the Ruby Holiday gem.
  #
  # Definitions loaded: data/ca.yaml, data/mx.yaml, data/us.yaml, data/north_america_informal.yaml
  #
  # To use the definitions in this file, load them right after you load the 
  # Holiday gem:
  #
  #   require 'holidays'
  #   require 'holidays/north_america'
  #
  # More definitions are available at http://code.dunae.ca/holidays.
  module North_America # :nodoc:
    DEFINED_REGIONS = [:ca, :us, :ca_qc, :ca_nf, :ca_nt, :ca_nu, :ca_ab, :ca_on, :ca_sk, :ca_mb, :ca_bc, :ca_ns, :ca_yk, :mx, :mx_pue]

    HOLIDAYS_BY_MONTH = {
      5 => [{:wday => 0, :week => 2, :logic => "2nd Sunday in May", :name => "Mother's Day", :regions => [:ca, :us]},
            {:function => lambda { |year| Holidays.ca_victoria_day(year) }, :function_id => "ca_victoria_day(year)", :logic => "Monday before May 25th", :name => "Victoria Day", :regions => [:ca]},
            {:function => lambda { |year| Holidays.ca_victoria_day(year) }, :function_id => "ca_victoria_day(year)", :name => "National Patriotes Day", :regions => [:ca_qc]},
            {:mday => 1, :name => "Día del Trabajo", :regions => [:mx]},
            {:mday => 5, :type => :informal, :name => "Cinco de Mayo", :regions => [:mx]},
            {:mday => 5, :name => "La Batalla de Puebla", :regions => [:mx_pue]},
            {:mday => 10, :type => :informal, :name => "Día de la Madre", :regions => [:mx]},
            {:mday => 15, :type => :informal, :name => "Día del Maestro", :regions => [:mx]},
            {:wday => 1, :week => -1, :logic => "Last Monday of May", :name => "Memorial Day", :regions => [:us]},
            {:wday => 0, :week => 3, :type => :informal, :name => "Father's Day", :regions => [:us, :ca]}],
      11 => [{:mday => 1, :type => :informal, :name => "Todos los Santos", :regions => [:mx]},
            {:mday => 2, :type => :informal, :name => "Los Fieles Difuntos", :regions => [:mx]},
            {:wday => 1, :week => 3, :name => "Día de la Revolución", :regions => [:mx]},
            {:wday => 4, :week => 4, :logic => "4th Thursday in November", :name => "Thanksgiving", :regions => [:us]}],
      6 => [{:wday => 0, :week => 3, :logic => "3rd Sunday in June", :name => "Father's Day", :regions => [:ca, :us]},
            {:mday => 24, :name => "Discovery Day", :regions => [:ca_nf]},
            {:mday => 24, :name => "Fête Nationale", :regions => [:ca_qc]},
            {:mday => 21, :name => "National Aboriginal Day", :regions => [:ca_nt]},
            {:wday => 0, :week => 3, :type => :informal, :name => "Día del Padre", :regions => [:mx]}],
      1 => [{:mday => 1, :logic => "January 1st", :name => "New Year's Day", :regions => [:ca]},
            {:mday => 2, :name => "New Year's", :regions => [:ca_qc]},
            {:mday => 1, :name => "Año nuevo", :regions => [:mx]},
            {:mday => 6, :name => "Dia de los Santos Reyes", :regions => [:mx]},
            {:mday => 1, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :logic => "January 1st", :name => "New Year's Day", :regions => [:us]},
            {:wday => 1, :week => 3, :logic => "3rd Monday in January", :name => "Martin Luther King, Jr. Day", :regions => [:us]}],
      12 => [{:mday => 26, :logic => "December 26th", :name => "Boxing Day", :regions => [:ca]},
            {:mday => 12, :type => :informal, :name => "Día de la Virgen de Guadalupe", :regions => [:mx]},
            {:mday => 24, :type => :informal, :name => "Nochebuena", :regions => [:mx]},
            {:mday => 25, :name => "Navidad", :regions => [:mx]},
            {:mday => 28, :name => "Los Santos Inocentes", :regions => [:mx]},
            {:mday => 26, :logic => "December 26th to January 31st", :name => "Kwanzaa", :regions => [:us]},
            {:mday => 31, :logic => "December 31st", :name => "New Year's Eve", :regions => [:us]}],
      7 => [{:mday => 1, :observed => lambda { |date| Holidays.to_monday_if_sunday(date) }, :observed_id => "to_monday_if_sunday", :logic => "Jult 1st", :name => "Canada Day", :regions => [:ca]},
            {:mday => 12, :name => "Orangemen's Day", :regions => [:ca_nf]},
            {:mday => 9, :name => "Nunavut Day", :regions => [:ca_nu]},
            {:mday => 4, :observed => lambda { |date| Holidays.to_weekday_if_weekend(date) }, :observed_id => "to_weekday_if_weekend", :logic => "July 4th", :name => "Independence Day", :regions => [:us]}],
      2 => [{:wday => 1, :week => 3, :name => "Family Day", :regions => [:ca_ab, :ca_on, :ca_sk]},
            {:wday => 1, :week => 3, :name => "Louis Riel Day", :regions => [:ca_mb]},
            {:wday => 1, :week => 1, :name => "Día de la Constitución", :regions => [:mx]},
            {:wday => 1, :week => 3, :logic => "3rd Monday in February", :name => "Presidents' Day", :regions => [:us]},
            {:mday => 2, :type => :informal, :name => "Groundhog Day", :regions => [:us, :ca]},
            {:mday => 14, :type => :informal, :name => "Valentine's Day", :regions => [:us, :ca]}],
      8 => [{:wday => 1, :week => 1, :name => "BC Day", :regions => [:ca_bc]},
            {:wday => 1, :week => 1, :name => "Saskatchewan Day", :regions => [:ca_sk]},
            {:wday => 1, :week => 1, :name => "Heritage Day", :regions => [:ca_ab]},
            {:wday => 1, :week => 1, :name => "Natal Day", :regions => [:ca_ns]},
            {:wday => 1, :week => 1, :name => "Civic Holiday", :regions => [:ca_on]},
            {:wday => 1, :week => 3, :name => "Discovery Day", :regions => [:ca_yk]}],
      3 => [{:mday => 23, :name => "St. George's Day", :regions => [:ca_nf]},
            {:wday => 1, :week => 3, :name => "Natalicio de Benito Juárez", :regions => [:mx]},
            {:mday => 17, :type => :informal, :name => "St. Patrick's Day", :regions => [:us, :ca]}],
      9 => [{:wday => 1, :week => 1, :logic => "1st Monday in September", :name => "Labour Day", :regions => [:ca]},
            {:mday => 15, :name => "Grito de Dolores", :regions => [:mx]},
            {:mday => 16, :name => "Día de la Independencia", :regions => [:mx]},
            {:wday => 1, :week => 1, :logic => "1st Monday in September", :name => "Labor Day", :regions => [:us]}],
      4 => [{:mday => 30, :type => :informal, :name => "Día del Niño", :regions => [:mx]},
            {:mday => 1, :type => :informal, :name => "April Fool's Day", :regions => [:us, :ca]},
            {:mday => 22, :type => :informal, :name => "Earth Day", :regions => [:us, :ca]}],
      10 => [{:wday => 1, :week => 2, :logic => "2nd Monday in October", :name => "Thanksgiving", :regions => [:ca]},
            {:mday => 12, :type => :informal, :name => "Día de la Raza", :regions => [:mx]},
            {:wday => 1, :week => 2, :logic => "2nd Monday in October", :name => "Columbus Day", :regions => [:us]},
            {:mday => 31, :logic => "October 31st", :name => "Halloween", :regions => [:us]},
            {:mday => 31, :type => :informal, :name => "Halloween", :regions => [:us, :ca]}]
    }
  end

# Monday on or before May 24
def self.ca_victoria_day(year)
  date = Date.civil(year,5,24)
  if date.wday > 1
    date -= (date.wday - 1)
  elsif date.wday == 0
    date -= 6
  end
  date
end


# January 20, every fourth year, following Presidential election
def self.us_inauguration_day(year)
  year % 4 == 1 ? 20 : nil
end



end

Holidays.merge_defs(Holidays::North_America::DEFINED_REGIONS, Holidays::North_America::HOLIDAYS_BY_MONTH)
