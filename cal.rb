require_relative 'RubyCal'
require_relative 'year'


if ARGV.length == 1
  year = ARGV[0].to_i
  calendar = Year.new(year)
  puts calendar.print_year
else
  month = ARGV[0].to_i
  year = ARGV[1].to_i
  calendar = Cal.new(month, year)
  puts calendar.print_calendar
end

