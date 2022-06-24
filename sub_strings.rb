dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"
hash = {}
p dictionary

def count_em(str, substr)
    str = str.downcase
    subarr = substr.chars
    num = str.each_char
       .each_cons(substr.size)
       .count(subarr)
end

dictionary.each do |word|
    hash[word] = count_em(string, word)
    if hash[word] == 0
        hash.delete(word)
    end
end

p string
p hash


