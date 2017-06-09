require 'byebug'
class Book
  attr_reader :title
  def title=(str)
    @title = titleize(str)
  end

  def titleize(str)
    titleized = []
    title_array = str.split(' ')
    articles_and_preps = ['a', 'an', 'the', 'and', 'in', 'of']

    title_array.each do |word|
      if articles_and_preps.include?(word)
        titleized << word
      else
        titleized << word.capitalize
      end
    end
    # debugger
    titleized.first.capitalize!
    titleized.join(' ')
  end
end
