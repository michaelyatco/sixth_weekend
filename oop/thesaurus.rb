# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.

class Entry
  attr_accessor :word, :synonyms, :antonyms

  def initialize(input_hash)
    @word = input_hash[:word]
    @synonyms = []
    @antonyms = []
  end

  def add_synonym(likeword)
    @synonyms << likeword
  end

  def add_antonym(opposite)
    @antonyms << opposite
  end

end

class Thesaurus < Entry
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_new_word(word)
    @entries << word
  end 

  def delete_word(word)
    @entries.delete(word)
  end

end


pretty = Entry.new(word: "pretty")
pretty.add_synonym("gorgeous")
pretty.add_synonym("beautiful")
p pretty.synonyms
pretty.add_antonym("ugly")
p pretty.antonyms

big = Entry.new(word: "big")
big.add_synonym("huge")
big.add_synonym("large")
p big.synonyms
big.add_antonym("small")
p big.antonyms

thesaurus = Thesaurus.new
thesaurus.add_new_word(pretty)
thesaurus.add_new_word(big)
p thesaurus

thesaurus.delete_word(big)
p thesaurus


