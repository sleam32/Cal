require 'test/unit'
require './RubyCal'

class CalIntegrationTest < Test::Unit::TestCase


  def test_01_return_month_header
    cal = Cal.new 2, 2013
    assert_equal "February 2013", cal.return_month_header
  end

  # def test_01a_return_month_header
  # 	expected "   February 2014"
  # 	actual = Cal.new(2, 2014).return_month_header
  # 	assert_equal(expected, actual)

  def test_02_return_daysOf_month_header
  	cal = Cal.new "February", 2013
  	assert_equal "Su, Mo, Tu, We, Th, Fr, Sa", cal.return_daysOf_month_header
  end

  def test_03_return_month_days_header_combined
  	cal = Cal.new(2, 2012)
  	assert_equal "February 2012 \n Su, Mo, Tu, We, Th, Fr, Sa", cal.return_month_days_header_combined
  end

  def test_04_not_a_leap_year
    cal = Cal.new(3, 1443)
    assert_equal false, cal.not_a_leap_year
  end

  def test_05_returns_correct_number_of_days
    cal = Cal.new(1, 2001)
    assert_equal  31, cal.num_days
  end

  def test_05a_num_days_different
  	cal = Cal.new(9, 1876)
  	assert_equal 30, cal.num_days
  end

  def test_05b_num_days_leap_year
  	cal = Cal.new(2, 1400)
  	assert_equal 29, cal.num_days
  end

  def test_start_day_of_month
   	cal = Cal.new(5, 2013)
   	assert_equal 3, cal.start_weekday
  end

  # def test_01a_start_day_of_month
  #  	cal = Cal.new(8, 2004)
  #  	assert_equal 1, cal.start_day
  # end

  # def test_start_day_of_month_leap_year
  #  	cal = Cal.new(2, 2002)
  #  	assert_equal 6, cal.start_day
  # end

  # def test_start_day_of_month_non_leap_year
  #  	cal = Cal.new(2, 1813)
  #  	assert_equal 2, cal.start_day
  # end

  # def test_print_calendar
  # 	cal = Cal.new(1, 2010)
  # 	assert_equal  "1  2", cal.print_calendar
  # end

end
