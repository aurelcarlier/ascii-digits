require './src/display_digits'
include DisplayDigits

describe '#integer?' do
  it "return false when entering a string" do
    expect(integer?('string')).to eq false
  end

  it "return false when entering a float" do
    expect(integer?('19.55')).to eq false
  end

  it "return true when entering a integer" do
    expect(integer?('04426')).to eq true
  end
end

describe '#ascii_numbers' do
  it "return the ascii version when entering 42" do
    expect(ascii_numbers('42')).to eq [ ascii_number('4'), ascii_number('2')]
  end
end

describe '#ascii_number' do

  it 'should print the right ascii number when entering 0' do
    expect(ascii_number('0')).to eq(
      { 
        first_row:  ' _ ',
        second_row: '| |',
        third_row:  '|_|'
      }
    )
  end

  it 'should print the right ascii number when entering 1' do
    expect(ascii_number('1')).to eq(
      { 
        first_row:  '   ',
        second_row: '  |',
        third_row:  '  |'
      }
    )
  end

  it 'should print the right ascii number when entering 2' do
    expect(ascii_number('2')).to eq(
      { 
        first_row:  ' _ ',
        second_row: ' _|',
        third_row:  '|_ '
      }
    )
  end

  it 'should print the right ascii number when entering 3' do
    expect(ascii_number('3')).to eq(
      { 
        first_row:  ' _ ',
        second_row: ' _|',
        third_row:  ' _|'
      }
    )
  end

  it 'should print the right ascii number when entering 4' do
    expect(ascii_number('4')).to eq(
      { 
        first_row:  '   ',
        second_row: '|_|',
        third_row:  '  |'
      }
    )
  end

  it 'should print the right ascii number when entering 5' do
    expect(ascii_number('5')).to eq(
      { 
        first_row:  ' _ ',
        second_row: '|_ ',
        third_row:  ' _|'
      }
    )
  end

  it 'should print the right ascii number when entering 6' do
    expect(ascii_number('6')).to eq(
      { 
        first_row:  ' _ ',
        second_row: '|_ ',
        third_row:  '|_|'
      }
    )
  end

  it 'should print the right ascii number when entering 7' do
    expect(ascii_number('7')).to eq(
      { 
        first_row:  ' _ ',
        second_row: '  |',
        third_row:  '  |'
      }
    )
  end

  it 'should print the right ascii number when entering 8' do
    expect(ascii_number('8')).to eq(
      { 
        first_row:  ' _ ',
        second_row: '|_|',
        third_row:  '|_|'
      }
    )
  end

  it 'should print the right ascii number when entering 9' do
    expect(ascii_number('9')).to eq(
      { 
        first_row:  ' _ ',
        second_row: '|_|',
        third_row:  '  |'
      }
    )
  end
end
