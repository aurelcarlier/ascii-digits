require './src/display_digits'
include DisplayDigits

raise "Wrong number of arguments. Exactly ONE is required."  if ARGV.size.zero? || ARGV.size > 1
raise "This parameter is not an integer. Please try again." unless integer?(ARGV[0])
display_as_ascii ARGV[0]
