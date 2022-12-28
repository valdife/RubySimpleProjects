def substrings(word, dictionary)
    words_array = word.gsub(/[^0-9a-z ]/i, '').split
    
    words_array
end

dictionary = {}
puts substrings("Howdy partner, sit down! How's it going?", dictionary)