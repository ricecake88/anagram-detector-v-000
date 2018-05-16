# Your code goes here!
class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(possible_anagrams) #returns all matches in array
   ''' anagrams = []
    characters_to_match = @word.chars.sort(&:casecmp).join
    possible_anagrams.each_with_index do |possible, i|
      if possible.chars.sort(&:casecmp).join == characters_to_match
         anagrams << possible_anagrams[i]
      end
    end
    anagrams
    '''
    possible_anagrams.select do |possible|
      @word.split("").sort == possible.split("").sort
    end
  end
end