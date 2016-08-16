require 'minitest/autorun'
#require 'minitest/pride'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # optional

require_relative 'sum_of_threes'
# require './sum_of_threes'

class TestSum < Minitest::Test

  def test_sum_of_threes_from_1_to_10
                  #actual       #expected
    assert_equal sum_of_threes(0,10), 18
  end

  def test_sum_of_threes_from_1_to_20

    assert_equal sum_of_threes(0,20), 63
  end

  def test_sum_of_threes_from_5_to_10

    assert_equal sum_of_threes(5,10), 15
  end

  def test_sum_of_threes_no_args
    assert_equal sum_of_threes(), 18
  end
end
