class Year


def initialize (year) 
	@year = year
	end

def test_header
	string = "#{@year}".center(64).rstrip + "\n"
	string
	end

def month_header
	month_array = []
	month_header = "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "Novemeber", "December"
	month_array << month_header
	end

def days_header
		"Su Mo Tu We Th Fr Sa"
	end
end