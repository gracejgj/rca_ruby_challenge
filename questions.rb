require 'date'

# Return the next number of the given integer
def next_number(num)
    num + 1
  end

# Minutes into seconds
def minutes_into_seconds(minutes)
  minutes * 60
end

# Return first element in an array
def get_first_element(arr)
  arr.first
end

# Return integer from string
# Return 0 if it is invalid
def string_to_integer(str)
 str.to_i
end

# Return true if number is more than 0 - NO EXAMPLE *****
# Return false if number is less than or equal to 0
# Return 'undefined' if it is invalid
def positive_number(num)
  if num >=0
    return "true"
  elsif num <=0
    return "false"
  else
    return "undefined"
  end
end

# Reverse a given string
def reverse(str)
  return str.reverse()
end

# Return true if sum of two numbers is more than 100, else false
def more_than_100(num1, num2)
  if num1 + num2 > 100
    return true
  else
    false
  end
end

# Return the unique number in an array
def unique_number(arr)
  arr.uniq.find { |e| arr.count(e) == 1 }
end

# Return the length of nested array
def get_length(arr)
 arr.flatten(2).count
end

# keep only the elements that start with an a
def select_elements_starting_with_c(arr)
  arr.select { |e| e.start_with? 'c' }
  #puts "select method : #{arr.select { |e| e.start_with? 'c' }}\n\n"
end

# Remove instances of nil (but NOT false) from an array
def remove_nils_from_array(arr)
  arr.reject { |e| e == nil }
  #puts "reject method : #{arr.reject { |e| e == nil }}\n\n"
end

# Remove instances of nil AND false from an array
def remove_nils_and_false_from_array(arr)
    arr.reject { |n| n.nil? || n == false }
end

# Reverse every word in an array and return it
def reverse_every_element_in_array(arr)
  arr.map(&:reverse!)
end

# Return each possible pairing outcome in an array
def every_possible_pairing_of_word(arr)
  i1 = arr
  i2 = []
  i1.combination(2).to_a
end

# Turn an array of numbers into two arrays of numbers
# First array in the array is all even numbers
# Second array in the array is all odd numbers
def separate_arr_into_even_and_odd_num(arr)
  arr.select { |e| e.even? || e == odd }
end

# Sorting string by last alphabet/character -ERROR ****
def sort_by_last_char(str)
  str.sort_by { |c| c.str[-1]}
end

# Serving drinks to people above age 18 and older, and when not on break time
# Return true if age is equal and above 18, when not on break time
# Return false if age is equal and above 18, when on break time
# Return false if age is below 18
def serve_drink(age, onBreak)
 if ((age >= 18) && (onBreak == false))
   return true
 else
   return false
 end
end

# Sum an array by the first (n) numbers -ERROR
def sum_numbers(arr, n)
  c = arr.n[0]+n[1]+n[2]+n[3].sum
end

# String to binary, range from a-m will be 0, range from n-z will be 1 - ERROR
def string_to_binary(str)
  if str.('a'..'m').include?
    return "0"
  else
    return "1"
  end
end

# Find missing numbers range from 1 to 10 in an array
def find_the_missing_numbers(arr)
  missing_num = arr.flat_map {|a| [a-1, a+1]}.uniq
  diff = (missing_num - arr).select {|a| a >= 1}
end

# Swap two digits and see if it is larger than the one swapped - ERROR
# Return true if it is larger than the one swapped
# Return false if it is smaller than the one swapped
def compare_number_after_swap(num)

end

# Return index of the first vowel - NO EXAMPLE
def index_of_the_first_vowel(str)
  #v = ["a","e","i","o","u"]
  #v.map { |c| [str.index(c)] }.first
  s = string.chars.count {|char| vowels.include? (char)}
end

# Return sum of two largest numbers in array
def sum_of_two_largest_numbers(arr)
  arr.max(2).reduce(:+)
end

# Return sum of two smallest numbers in array
def sum_of_two_smallest_numbers(arr)
  arr.min(2).reduce(:+)
end

# Return sum of positive number
def sum_of_positive(arr)
  arr.select {|e| e>=0}.sum
end

# Return sum of negative number
def sum_of_negative(arr)
  arr.select {|e| e<=0}.sum
end

# Sum positive number, count negative number
def sum_positive_count_negative(arr)
  positives, negatives = arr.partition(&:positive?)
  [positives.inject(0,&:+), negatives.length]
end

# Count positive number, sum negative number
def count_positive_sum_negative(arr)
  positives, negatives = arr.partition(&:positive?)
  [positives.length, negatives.inject(0,&:+)]
end

# Return file extention from files - ERROR
def get_file_extension(arr)

end

# Validation Zip code format - ERROR
def validation_of_zip_code(code) #  arr.select { |e| e.even? || e == odd }
  if !/\A\d+\z/.match(code)
    return false
  elsif code.length == 5
    return true
  else
    return false
  end
end

# Keeps only strings with repeating identical characters
def filter_repeated_character_strings(arr)
end

# Rock Paper Scissors
def rock_paper_scissors(player_1, player_2)
   if player_1 == player_2
     return "It's a draw!"
   elsif player_1 > player_2
     return "Player 2 wins!"
   else
     return "Player 1 wins!"
  end
end

# Get the final price after applying discount
def price_after_discount(price, discount)
  p = price - (price * discount / 100)
end

# Order above 100 to eligible for free shipping - ERROR
def check_for_eligible_of_free_shipping(order)
  if order > 100
   return true
  else
   return false
  end
end

# Return the first found longest word
def get_the_longest_word(str)
  str.split(" ").sort! {|s, l| l.length <=> s.length}[0]
end

# Return the first found shortest word
def get_the_shortest_word(str)
  str.split(" ").sort! {|s, l| s.length <=> l.length}[0]
end

# Check if a month in a particular year contains a Sunday 7th
def has_sunday_with_date_7(month, year)
  Date.new(year, month, 7).downto(0).find(&:sunday?)
  return true
end

# Filter array with strings and integers, return strings only
def filter_out_integers(arr)
  arr.select { |num| num.is_a? (String) }
end

# Filter array with strings and integers, return integers only
def filter_out_strings(arr)
  arr.select { |num| num.is_a? (Integer) }
end

# Get the next alphabet of every letter of a word - ERROR - need to do looping
def the_next_alphabet(word)
  word.next {|i| i + 1 }
end

# Count each alphabet 'X', 'Y', 'Z' from a given string - ERROR
def calculate_alphabet(str)
end

# Capitalize first letter of each word
def capitalize_letter_of_each_word(str)
  str.split.map(&:capitalize).join(' ')
end

# Reverse words which have even length
def reverse_even_words(str)
  str.split.map { |s| s.length < 4 ? s : s.reverse }.join(' ')
end

# Sorting an array with 'asc', 'dsc', 'none'
def sorting_an_array(arr, order)
  if order == "asc"
    return arr.sort
  elsif order == "dsc"
    return arr.sort{|a,b| b <=> a}
  else order == "none"
    return arr
  end
end

# Return an array of index of small letter -ERROR
def index_of_small_letter(word)
  #word.gsub(/[[:lower:]]/)
end

# Word Spelling - ERROR
def word_spelling(word)
end

# Sum up only numbers in an array
def sum_up_numbers(arr)
  arr.select {|n| n.is_a? Integer}.reduce(0, :+)
end

# Perform operation of 4 types, if divided by 0 then is undefined
# Add, Subtract, Multiply, Divide
def operation_of(a, b, op)
  if op ==  "add"
    return a + b
  elsif op == "subtract"
      return a - b
  elsif op == "multiply"
      return a * b
  elsif op == "divide"
    if b == 0
        return "undefined"
    else
        return a / b
    end
  end
end

# Hashtag generator
# Start with a hashtag
# Capitalized first letter for each word
# Return false if empty string or more than 30 characters
def hashtag(str)
  return false if str.strip.empty?
  str = str.split(" ").map(&:capitalize).join.prepend("#")
  str.length > 30 ? false : str
end

# Reformat date to be [MM, DD, YYYY] -ERROR " "
def date_reformatting(date)
   #date.split('/')..join(',')
 Date.parse.(date).strftime'[%m, %d, %Y]'
end
