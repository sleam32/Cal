require 'test/unit'
require 'year'

class YearUnitTests < Test::Unit::TestCase



  def test_year_header
    cal = Year.new(2015)
    assert_equal("                              2015\n", cal.test_header)
  end

  def test_week_row
    cal = Year.new(2015)
    expected = "Su Mo Tu We Th Fr Sa" + " " + "Su Mo Tu We Th Fr Sa" + " " + "Su Mo Tu We Th Fr Sa\n"
    assert_equal(expected, cal.week_row)
  end

  def test_month_array
    cal = Year.new(2015)
    assert_equal(["January",
    	"February",
    	"March",
    	"April",
    	"May",
    	"June",
    	"July",
    	"August",
    	"September",
    	"October",
    	"November",
    	"December"], cal.month_array)
  end

  def test_days_array
    cal = Year.new(2015)
    assert_equal([" 1"," 2"," 3"," 4"," 5"," 6"," 7"," 8"," 9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"], cal.days_array)
  end

  def test_print_line_1
    cal = Year.new(2015)
    expected ="            1  2  3" + " " + "1  2  3  4  5  6  7" + " " + "1  2  3  4  5  6  7\n"
    assert_equal(expected, cal.row1_line_1)
  end

  def test_print_line_2
    cal = Year.new(2015)
    expected ="4  5  6  7  8  9 10" + " " + "8  9 10 11 12 13 14" + " " + "8  9 10 11 12 13 14\n"
    assert_equal(expected, cal.row2_line_2)
  end

  def test_print_line_3
    cal = Year.new(2015)
    expected = "11 12 13 14 15 16 17" + " " + "15 16 17 18 19 20 21" + " " + "15 16 17 18 19 20 21\n"
    assert_equal(expected, cal.row3_line_3)
  end

  def test_print_line_4
    cal = Year.new(2015)
    expected = "18 19 20 21 22 23 24" + " " + "22 23 24 25 26 27 28" + " " + "22 23 24 25 26 27 28\n"
    assert_equal(expected, cal.row4_line_4)
  end

  def test_print_line_5
    cal = Year.new(2015)
    expected = "25 26 27 28 29 30 31" + " " +"                       " + " " + "29 30 31\n"
    assert_equal(expected, cal.row5_line_5)
  end

  def format_3_months
   cal = Year.new(2015)
   expected ="              1  2  3" + " " + "1  2  3  4  5  6  7" + " " + "1  2  3  4  5  6  7\n"
   "4  5  6  7  8  9 10" + " " + "8  9 10 11 12 13 14" + " " + "8  9 10 11 12 13 14\n"
   "11 12 13 14 15 16 17" + " " +"15 16 17 18 19 20 21" + " " + "15 16 17 18 19 20 21\n"
   "18 19 20 21 22 23 24" + " " +"22 23 24 25 26 27 28" + " " + "22 23 24 25 26 27 28\n"
   "25 26 27 28 29 30 31" + "                         " + " " + "29 30 31\n"
   assert_equal(expected, cal.format_3_months)
 end

 def test_header_and_week_row
   cal = Year.new(2015)
   expected = "January 2015 \n Su Mo Tu We Th Fr Sa" + " " + "February 2015 \n Su Mo Tu We Th Fr Sa" + " " + "March 2015 \n Su Mo Tu We Th Fr Sa"
   assert_equal(expected, cal.header_week_row)
 end

end

