def bkwds(phrase)
  phrase.split('')
end

ary_phrase = bkwds("tango foxtrot")

index = ary_phrase.length - 1

new_array = []

while index >= 0
  new_array << ary_phrase[index]
  index -=1
end

capitalized = new_array.each_with_index do |word, i|
  word.capitalize! if i.even?
end

p capitalized.join(" ")


