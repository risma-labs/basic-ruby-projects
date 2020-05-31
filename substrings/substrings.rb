def substrings(str, dictionary)
  subs = []
  matches = {}
  (0...str.length).each do |i|
    (i...str.length).each { |j| subs << str[i..j].downcase }
  end
  dictionary.each { |word| matches[word] = subs.count(word) if subs.any?(word) }
  matches
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)

