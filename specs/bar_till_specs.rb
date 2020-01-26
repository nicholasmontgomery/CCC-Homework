require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bar_till')

class TestBar_till < Minitest::Test

  def setup
      @room_1_till = Bar_till.new(0)
      @room_2_till = Bar_till.new(1000)
  end

  def test_till_2_has_money
    assert_equal(1000, @room_2_till.till_amount)
  end


end
