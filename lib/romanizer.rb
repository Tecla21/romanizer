# frozen_string_literal: true

require_relative "romanizer/version"

module Romanizer
  class Error < StandardError; end
  # Your code goes here...
  def self.to_roman(number)
    raise ArgumentError, "Number must be between 1 and 3999" unless number.between?(1, 3999)

    # Define the values and corresponding Roman symbols.
    values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    symbols = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

    # Initializes the string to store the Roman representation.
    roman = ""

    # Iterates over the values and corresponding Roman symbols.
    values.each_with_index do |value, index|
      while number >= value
        # Adds the Roman symbol to the string and subtracts the value from the number.
        roman += symbols[index]
        number -= value
      end
    end
    roman
  end

  def self.to_integer(roman)
    raise ArgumentError, "Invalid Roman numeral" unless valid_roman?(roman)

    # Define the values and corresponding Roman symbols.
    roman_values = {
      'M'  => 1000,
      'D'  => 500,
      'C'  => 100,
      'L'  => 50,
      'X'  => 10,
      'IX' => 9,
      'V'  => 5,
      'IV' => 4,
      'I'  => 1
    }

    result = 0

    # Validate if the input is a valid Roman numeral
    # return -1 unless self =~ /^[MDCLXVI]+$/
    return -1 unless valid_roman?(roman)

    # Iterates over the values and corresponding Roman symbols.
    roman.chars.each_with_index do |char, index|
      value = roman_values[char]

      # If the next character has a greater value, subtract it.
      if roman_values[roman[index + 1]] && roman_values[roman[index + 1]] > value
        result -= value
      else
        result += value
      end
    end
    result
  end

  def self.valid_roman?(roman)
    !!(roman =~ /\A(M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3}))\z/i)
  end

end
