=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym 
  def self.abbreviate(sentence)
    new_sentence = sentence.gsub('-', ' ')
    cleaned = new_sentence.gsub(/[^a-zA-Z ]/, "")

    words = cleaned.split(' ')
    abbreviation = ''

    words.each do |word|
      abbreviation += word[0].upcase
    end

    return abbreviation
  end
end