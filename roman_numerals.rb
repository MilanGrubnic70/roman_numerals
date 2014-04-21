ROMAN_ARABIC = {"M" => 1000,
                "D" =>  500,
                "C" =>  100,
                "L" =>   50,
                "X" =>   10,
                "V" =>    5,
                "I" =>    1}

def to_roman(num)
  roman_numerals = String.new
  ROMAN_ARABIC.each do |roman, arabic|
    roman_numerals += (roman * (num/arabic))
    num = num%arabic
  end
  roman_numerals
end #to_roman


puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IIII     | #{to_roman(4)}"
puts "9     | VIIII    | #{to_roman(9)}"
puts "13    | XIII     | #{to_roman(13)}"
puts "1453  | MCCCCLIII| #{to_roman(1453)}"
puts "1646  | MDCXXXXVI| #{to_roman(1646)}"


####Modernized Roman Numberals####


def to_modern_roman(num)
  roman_numerals = String.new
  ROMAN_ARABIC.each do |roman, arabic|
    roman_numerals += (roman * (num/arabic))
    num = num%arabic
  end
  roman_numerals.gsub!(/CCCC/,  'CD') # four hundred
  roman_numerals.gsub!(/LXXXX/, 'XC') # nintey
  roman_numerals.gsub!(/XXXX/,  'XL') # forty
  roman_numerals.gsub!(/VIIII/, 'IX') # nine
  roman_numerals.gsub!(/IIII/,  'IV') # four
  roman_numerals
end #to_roman



puts "My totally sweet testing script"
puts ""
puts "input | expected | actual"
puts "------|----------|-------"
puts "4     | IV       | #{to_modern_roman(4)}"
puts "9     | IX       | #{to_modern_roman(9)}"
puts "13    | XIII     | #{to_modern_roman(13)}"
puts "14    | XIV      | #{to_modern_roman(14)}"
puts "40    | XL       | #{to_modern_roman(40)}"
puts "44    | XLIV     | #{to_modern_roman(44)}"
puts "90    | XC       | #{to_modern_roman(90)}"
puts "944   | CMXLIV   | #{to_modern_roman(944)}"
puts "1453  | MCDLIII  | #{to_modern_roman(1453)}"
puts "1646  | MDCXLVI  | #{to_modern_roman(1646)}"

