class Anagram
    attr_reader :word
  
    def initialize(word)
      @word = word
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private
  
    def anagram?(other_word)
      sorted_word = word.downcase.chars.sort
      sorted_other_word = other_word.downcase.chars.sort
      sorted_word == sorted_other_word && word.downcase != other_word.downcase
    end
  end
  
