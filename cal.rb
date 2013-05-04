require_relative 'RubyCal'

month = ARGV[0]
year = ARGV[1]

cal = Cal.new(month, year)
cal.print_calendar