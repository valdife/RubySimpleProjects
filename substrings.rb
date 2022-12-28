def substrings(text, dictionary)
  result_hash = Hash.new(0)
  text.downcase!
  dictionary.each do |key|
    matches = text.scan(key).length
    result_hash[key] = matches if matches != 0 
  end
  result_hash
end
  

keys = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", keys)