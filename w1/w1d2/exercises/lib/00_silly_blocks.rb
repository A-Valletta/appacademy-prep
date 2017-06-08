def reverser
  words = yield.split(' ')
  words.map { |word| word.reverse }.join(' ')
end

def adder(integer=1)
  yield + integer
end

def repeater(count=1)
  count.times { yield }
end
