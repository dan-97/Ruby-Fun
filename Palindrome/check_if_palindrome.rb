=begin
******************* Check if Palindrome *******************

A fun play with strings application.

The string entered by user is checked to see if it's a palindrome. A palindrome
is a word that spells the same forwards as it spells backwrds.

Example:
You typed -> "hannah"
"hannah" is a Palindrome
-------------------------------------------
You typed -> "hello"
"hello" is NOT a Palindrome
=end

class Palindrome

  def initialize(str)
    @pali_str = str # the input string

    @symbols = [" ",".",",","-",";",":","!","?"] # the unwanted characters/symbols
  end

  # Setter method for input string
  def pali_str=(str)
    @pali_str = str
  end

  # check if string is palindrome
  def is_palindrome?
    v1_str = @pali_str.downcase # lowercase the string

    @symbols.each do |sym|
      v1_str.gsub!(sym,"") # eliminte all the unwanted characters/symbols
    end

    if (v1_str == v1_str.reverse) # reverse the string to see if it matches backwrds with forwards
      puts "True"
    else
      puts "False"
    end
  end

  # Clear the terminal
  def clear_screen
    system 'cls' # clear content on Windows cmd
    system 'clear' # clear content on Terminal cmd
  end

end

while true
  # Prompt input
  print "Please type a string: "
  user_string = gets.chomp.to_s

  puts "Is \"#{user_string}\" a Palindrome?"

  # Create object
  pali = Palindrome.new(user_string)

  # Function call
  pali.is_palindrome?

  print "Continue? y/n: "
  continue = gets.chomp.to_s

  pali.clear_screen # method for clearing terminal

  break if continue == "n"

end
