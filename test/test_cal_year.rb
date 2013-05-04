require 'test/unit'
require 'year'

class YearUnitTests < Test::Unit::TestCase



def test_year_header
    cal = Year.new(2012)
    assert_equal("                              2012\n", cal.test_header)
  end

  def test_month_header
  	cal = Year.new(2012)
  	assert_equal(%w[January February March April May June July August September October November December], cal.month_header)
	end
	
  def test_days_header
  	cal = Year.new(2012)
  	assert_equal("Su Mo Tu We Th Fr Sa", cal.days_header)
  end

end