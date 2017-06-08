require 'byebug'

def translate(str)
  # debugger
  all_words = str.split(' ')
  all_words.map! { |word| translate_word(word) }.join(' ')
end

def find_first_vowel(str)
  vowels = ['a', 'e', 'i', 'o']
  vowel_idxs = []
  vowels.each { |vowel| vowel_idxs << str.index(vowel) }
  vowel_idxs.delete_if {|el| el == nil }.sort.first
end

def translate_word(str)
  final = ''
  first_vowel_idx = find_first_vowel(str)
  final << str[first_vowel_idx..-1] << str[0...first_vowel_idx] << 'ay'
end
