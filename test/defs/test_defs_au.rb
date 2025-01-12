# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/au.yaml
class AuDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_au
{Date.civil(2007,1,1) => 'New Year\'s Day', 
 Date.civil(2007,1,26) => 'Australia Day', 
 Date.civil(2007,4,6) => 'Good Friday',
 Date.civil(2007,4,9) => 'Easter Monday',
 Date.civil(2007,4,25) => 'ANZAC Day',
 Date.civil(2007,12,25) => 'Christmas Day',
 Date.civil(2007,12,26) => 'Boxing Day'}.each do |date, name|
  assert_equal name, (Holidays.on(date, :au, :informal)[0] || {})[:name]
end

[:au_sa, :au_act, :au_nsw, :au_].each do |r|
  assert_equal 'Labour Day', Date.civil(2007,10,1).holidays(r)[0][:name]
end

[:au_sa, :au_act, :au_nsw, :au_vic, :au_tas, :au_qld, :au_nt, :au_].each do |r|
  assert_equal 'Queen\'s Birthday', Date.civil(2007,6,11).holidays(r)[0][:name]
end

assert_equal 'Labour Day', Date.civil(2007,3,5).holidays(:au_wa)[0][:name]
assert_equal 'Labour Day', Date.civil(2007,3,12).holidays(:au_vic)[0][:name]
assert_equal 'Labour Day', Date.civil(2007,5,7).holidays(:au_qld)[0][:name]

assert_equal 'May Day', Date.civil(2007,5,7).holidays(:au_nt)[0][:name]

assert_equal 'Eight Hours Day', Date.civil(2007,3,12).holidays(:au_tas)[0][:name]

  end
end
