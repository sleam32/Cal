require 'test/unit'
require './RubyCal'

class CalIntegrationTest < Test::Unit::TestCase


  def test_01_return_month_header
    cal = Cal.new 2, 2013
    assert_equal("February 2013", cal.return_month_header)
  end

  def test_02_return_daysOf_month_header
  	cal = Cal.new "February", 2013
  	assert_equal("Su, Mo, Tu, We, Th, Fr, Sa", cal.return_days_of_month_header)
  end

  def test_03_return_month_days_header_combined
  	cal = Cal.new(2, 2012)
  	assert_equal("February 2012 \n Su, Mo, Tu, We, Th, Fr, Sa", cal.return_month_days_header_combined)
  end

  def test_non_leap_century
    cal = Cal.new(2, 1900)
    assert_equal(28, cal.leap_century)
  end

  def test_05_returns_correct_number_of_days
    cal = Cal.new(1, 2001)
    assert_equal(31, cal.num_days_in_month)
  end

  def test_05a_num_days_different
  	cal = Cal.new(9, 1876)
  	assert_equal(30, cal.num_days_in_month)
  end

  def test_05b_num_days_leap_year
  	cal = Cal.new(2, 1400)
  	assert_equal(29, cal.num_days_in_month)
  end

  def test_start_day_of_month
    cal = Cal.new(5, 2013)
    assert_equal(4, cal.start_weekday_zellers)
  end

  def test_01a_start_day_of_month
    cal = Cal.new(8, 2004)
    assert_equal(1, cal.start_weekday_zellers)
  end

  def test_06_print_one_month
    cal = Cal.new(9,2012)
    expected = []
    expected << " September 2012 "
    expected << "Su Mo Tu We Th Fr Sa"
    expected << "                   1"
    expected << " 2  3  4  5  6  7  8"
    expected << " 9 10 11 12 13 14 15"
    expected << "16 17 18 19 20 21 22"
    expected << "23 24 25 26 27 28 29"
    expected << "30"
    assert_equal(expected, cal.print_calendar)
  end

end
