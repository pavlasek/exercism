# frozen_string_literal: true

# Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
# `resistor_color_duo_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/resistor-color-duo` directory.

#module ResistorColorDuo contains a method to convert an array of colors into a value
module ResistorColorDuo
  @hash_of_colors = {
    'black' => 0,
    'brown' => 1,
    'red' => 2,
    'orange' => 3,
    'yellow' => 4,
    'green' => 5,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8,
    'white' => 9
  }

  def self.value(colors)
    first_color = colors[0]
    second_color = colors[1]

    @hash_of_colors[first_color] * 10 + @hash_of_colors[second_color]
  end
end
