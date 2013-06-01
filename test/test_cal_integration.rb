require 'test/unit'

class CalIntegrationTest < Test::Unit::TestCase

	def test_01_is_this_working?
		assert_equal(`cal 2 2012`, `ruby Rubycal.rb 2 2012`)
	end

	def test_02_leap_year_x400
		assert_equal(`cal 2 2400`, `ruby RubyCal.rb 2 2400`)
	end

	def test_03_leap_year_x4
		assert_equal(`cal 2 2008`, `ruby RubyCal.rb 2 2008`)
	end

	def test_04_non_leap_year_x100
		assert_equal(`cal 5 2300`, `ruby RubyCal.rb 5 2300`)
	end

	def test_05_numberOf_days_in_month
		assert_equal(`cal 3 2012 31`, `ruby RubyCal.rb 3 2012 31`)
	end

	def test_05a_numberOf_days_in_month
		assert_equal(`cal 2 2012 28`, `ruby RubyCal.rb 2 2012 28`)
	end

	def test_06_feb_when_not_leap_year
		assert_equal(`cal 2 2003`, `ruby RubyCal.rb 2 2003`)
	end

	def test_07_feb_leap_year
		assert_equal(`cal 2 2004`, `ruby RubyCal.rb 2 2004`)
	end

end