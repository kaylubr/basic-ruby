def substrings(word, dictionary)
  word_arr = word.split(" ")
  word_arr.reduce(Hash.new(0)) do |acc, curr|
    dictionary.each do |value|
      if curr.downcase.include?(value.downcase)
        acc[value] += 1
      end
    end
    acc
  end
end

substrings()