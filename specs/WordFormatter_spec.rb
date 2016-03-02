require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/WordFormatter.rb'

class WordFormatterTest < MiniTest::Test

  def setup
      @data = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }
  end

  # Write and test-drive a WordFormatter class with a method to format the postcode to upcase which should then be used in your 'address' route.


  def test_postcode_upcase
    data = WordFormatter.new( @data )
    result = data.postcode_upcase
    assert_equal("E13 ZQF", result)
  end

  def test_camelcase_building
    data = WordFormatter.new( @data )
    result = data.camelcase_building
    assert_equal( 'Codebase', result )
  end



end
