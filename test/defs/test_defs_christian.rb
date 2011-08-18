# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/christian.yaml
class ChristianDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_christian
assert_equal 'Easter', Date.civil(2024, 04, 24).holidays(:cristian)[0][:name]

  end
end
