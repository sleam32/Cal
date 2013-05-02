
  # month = ARGV[0]
  # year = ARGV[1]


  # puts `cal #{month} #{year}`


class Cal
attr_accessor :month 
attr_accessor :year

def initialize (month, year) 
	@month = month 
	@year = year 
end

def return_month_header # February 2013

    months = [ "January",
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
               "December"
             ]
    selected_month = months[month.to_i-1]
    "#{selected_month} #{year}".center(20).rstrip
end

def return_daysOf_month_header 
  	"Su, Mo, Tu, We, Th, Fr, Sa"
end

def return_month_days_header_combined 
 	month_days_header_combined = "#{return_month_header} \n #{return_daysOf_month_header}"
 	#format te days with proper line breaks
 	# correct number of days
 	# which day of the week does it start on?
 	# start_weekday.times do
 	 # result << "   "
 	# end
 # end

 	return month_days_header_combined 
end

def not_a_leap_year
    return true if @year % 400 == 0
    return true if @year % 100 == 0
    return true if @year % 4 == 0
  else
    return false
  end

def num_days
    days_in_month =[31,28,31,30,31,30,31,31,30,31,30,31]
    days_in_month[month - 1]
    if month - 1 == 1
    	return 29
    else
    	days_in_month[month - 1]
    end
end

  def start_weekday
  	0
  end

    # days_of_the_week = ['Saturday','Sunday','Monday','Tuesday','Wednesday','Thursday','Friday']
    # days_of_the_week[month - 1]
    # q = 1
    # if month < 3
      # month += 12
      # year = year - 1
  #   end
  # end
  # start_num = (q + (month + 1) * 26/10) + year + (year/4) + 6 (year/100) + (year/400) % 7
  # days_of_the_week[start_num]
end

#  def print_calendar
#   unless month and year
#    raise ArgumentError 
# end

# print_calendar(month, year)

