def toRomanNumerals(integer)
 roman_numbers = { 1 => 'I', 5 => 'V', 9 => 'IX', 10 => 'X', 50 => 'L', 90 => 'XC', 100 => 'C', 500 => 'D', 900 => 'CM', 1000 => 'M' }
 numbers = roman_numbers.keys.sort { |a,b| b <=> a }
 numbers.map do |number|
   x, y = integer.divmod(number)
   if x > 3      
      next_number = numbers.at(numbers.index(number) - 1)
      integer -= next_number - number
      roman_numbers[number] + roman_numbers[next_number]
   elsif x > 0
     integer -= number * x
     roman_numbers[number] * x
   end
 end.join
end

def parseRomanNumerals(string)
  roman_numbers = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  previous_number = 1
  string.reverse.chars.map do |ch|
    number = roman_numbers[ch]
    if previous_number > number
      previous_number = number
      -number
    else
      previous_number = number      
    end
  end.inject {|sum,n| sum + n }
end
