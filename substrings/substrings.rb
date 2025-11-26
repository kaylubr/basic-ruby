def substrings(word, dictionary)
  word_arr = word.split(" ")
  word_arr.reduce(Hash.new(0)) do |acc, curr|
    dictionary.each do |value|
      acc[value] += 1 if curr.downcase.include?(value.downcase)
    end
    acc
  end
end