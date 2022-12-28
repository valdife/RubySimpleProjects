def substrings(word, dictionary)
  # dictionary = dictionary.map { |key| key.to_sym } <- better to use symbols as keys, but Odin asked to not
  dict_hash = Hash.new(0)

  # regexp selects every char that is NOT (^) caseinsensitive (/i) alphanumerical and includes spaces (0-9a-z )
  words_array = word.gsub(/[^0-9a-z ]/i, '').split.map { |word| word.downcase }
  
  words_array.each do |string|
    dictionary.each do |key|
      dict_hash[key] += 1 if string.include? key #.to_s
    end
  end
  dict_hash
end
  

keys = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", keys)