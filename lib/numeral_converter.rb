class RomanNumeral
  def convert(number)
    fail 'The Input was not an Integer' unless number.is_a? Integer
    output = ''
    case number
    when 1..3
      number.times { output << 'I' }
    when 4
      output << 'IV'
    when 5..8
      output << 'V'
      (number - 5).times { output << 'I'}
    when 9
      output << 'IX'
    when 10
      output << 'X'
    end
    output
  end
end
