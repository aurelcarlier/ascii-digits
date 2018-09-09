module DisplayDigits

  def integer?(value)
    Integer(value) != nil rescue false
  end

  def display_as_ascii(number)
    numbers = ascii_numbers(number)

    %i[first_row second_row third_row].each do |row|
      numbers.map { |number| number[row] }.each {|row| print row }
      print "\n"
    end
    print "\n\n"
  end

  def ascii_numbers(number)
    numbers = []
    number.chars.each do |number|
      numbers << ascii_number(number)
    end
    numbers
  end

  def ascii_number(number)
    case number
    when '0'
      { 
        first_row:  ' _ ',
        second_row: '| |',
        third_row:  '|_|'
      }
    when '1'
      { 
        first_row:  '   ',
        second_row: '  |',
        third_row:  '  |'
      }
    when '2'
      { 
        first_row:  ' _ ',
        second_row: ' _|',
        third_row:  '|_ '
      }
    when '3'
      { 
        first_row:  ' _ ',
        second_row: ' _|',
        third_row:  ' _|'
      }
    when '4'
      { 
        first_row:  '   ',
        second_row: '|_|',
        third_row:  '  |'
      }
    when '5'
      { 
        first_row:  ' _ ',
        second_row: '|_ ',
        third_row:  ' _|'
      }
    when '6'
      { 
        first_row:  ' _ ',
        second_row: '|_ ',
        third_row:  '|_|'
      }
    when '7'
      { 
        first_row:  ' _ ',
        second_row: '  |',
        third_row:  '  |'
      }
    when '8'
      { 
        first_row:  ' _ ',
        second_row: '|_|',
        third_row:  '|_|'
      }
    when '9'
      { 
        first_row:  ' _ ',
        second_row: '|_|',
        third_row:  '  |'
      }
    else
      raise 'something went wrong...'
    end
  end
end
