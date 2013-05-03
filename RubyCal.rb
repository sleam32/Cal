
class Cal
attr_accessor :month 
attr_accessor :year

def initialize (month, year) 
	@month = month.to_i 
	@year = year.to_i 
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
    "#{selected_month} #{@year}"
end

def return_daysOf_month_header 
  	"Su, Mo, Tu, We, Th, Fr, Sa"
end

def return_month_days_header_combined 
 	month_days_header_combined = "#{return_month_header} \n #{return_daysOf_month_header}"

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
    days_in_month[@month - 1]
    if month - 1 == 1
    	return 29
    else
    	days_in_month[@month - 1]
    end
end

def start_weekday
	  ((1 + (@month + 1) * 26/10)+ @year + (@year/4) + 6 * (@year/100) + (@year/400)) % 7
  	end

  def leap_century
    thirty = [4,6,9,11]
    thirtyone = [1,3,5,7,8,10,12]
    return 30 if thirty.include? @month
    return 31 if thirtyone.include? @month
    if @year % 100 == 0 && @year % 400 == 0
      29
    elsif @year % 4 == 0 && @year % 100 != 0
      29
    else
      28
    end
  end

def print_calendar
    start = self.start_weekday
    days = ['Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday',]
    startday = days.index(start)

    output = "                   "
    output += (1..9).to_a.join("  ")
    output += " "
    output += (10..self.num_days).to_a.join(" ")
    new_output = output.scan(/.{1,21}/)
    new_output.each do |o|
      o.rstrip!
    end

    #print out a month
    return_month_header[@month - 1]
    top_line = "#{return_month_header}".center(16)
    next_line = "Su Mo Tu We Th Fr Sa"
    new_output.unshift(next_line).unshift(top_line)
  end
end
