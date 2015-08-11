puts "Give me a sentence."
sentence = gets.chomp

frequency = Hash.new(0)
words = sentence.split

words.each {|w| frequency[w] += 1}
# or
# words.each {|w| frequency[w].next}
print frequency
