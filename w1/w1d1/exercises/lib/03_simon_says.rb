require 'byebug'

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, n=2)
  # debugger
  final_str = ''
  n.times { final_str << str + ' ' }
  final_str[0...-1]
end

def start_of_word(str, idx)
  str[0...idx]
end

def first_word(str)
  split_str = str.split(' ')
  split_str.first
end

def titleize(str)
  no_no_list = ['and', 'the', 'over']
  split_title = str.split(' ')
  final_title_array = []

  # debugger
  split_title.each do |word|
    no_no_list.include?(word) ? final_title_array << word : final_title_array <<word.capitalize
  end

  final_title_array.first.capitalize!
  final_title_array.join(' ')
end
