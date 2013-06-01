
class Year


  def initialize (year)
   @year = year.to_i
 end

 def test_header
   string = "#{@year}".center(64).rstrip + "\n"
   string
 end

 def week_row
  week = "Su Mo Tu We Th Fr Sa"
  test_string = week + " " + week + " " + week + "\n"
  test_string
end

def month_array
  months = []
  month_names = "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
  (1..12).each do |month|
  end
  months << month_names
  month_names
end

def days_array
  days_array = []
  days = " 1"," 2"," 3"," 4"," 5"," 6"," 7"," 8"," 9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31"
  (1..31).each do |day|
  end
  days_array << days
  days
end

def row1_line_1
  row1 = []
  row1_line_1 = "            1  2  3" + " "
  row1_line_2 = "1  2  3  4  5  6  7" + " "
  row1_line_3 = "1  2  3  4  5  6  7\n"
  row1 << row1_line_1 + row1_line_2 + row1_line_3
  row1.join
end

def row2_line_2
  row2 = []
  row2_line_1 = "4  5  6  7  8  9 10" + " "
  row2_line_2 = "8  9 10 11 12 13 14" + " "
  row2_line_3 = "8  9 10 11 12 13 14\n"
  row2 << row2_line_1 + row2_line_2 + row2_line_3
  row2.join
end

def row3_line_3
  row3 = []
  row3_line_1 = "11 12 13 14 15 16 17" + " "
  row3_line_2 = "15 16 17 18 19 20 21" + " "
  row3_line_3 = "15 16 17 18 19 20 21\n"
  row3 << row3_line_1 + row3_line_2 + row3_line_3
  row3.join
end

def row4_line_4
  row4 = []
  row4_line_1 = "18 19 20 21 22 23 24" + " "
  row4_line_2 = "22 23 24 25 26 27 28" + " "
  row4_line_3 = "22 23 24 25 26 27 28\n"
  row4 << row4_line_1 + row4_line_2 + row4_line_3
  row4.join
end

def row5_line_5
  row5 = []
  row5_line_1 = "25 26 27 28 29 30 31" + " "
  row5_line_2 = "                        "
  row5_line_3 = "29 30 31\n"
  row5 << row5_line_1 + row5_line_2 + row5_line_3
  row5.join
end

def print_year
  string = test_header
  string << row1_line_1
  string << row2_line_2
  string << row3_line_3
  string << row4_line_4
  string << row5_line_5
  string
end

end

