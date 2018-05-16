# Your code goes here!
class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(possible_anagrams) #returns all matches in array
    possible_anagrams.select do |possible|
      @word.split("").sort == possible.split("").sort
    end
  end
end