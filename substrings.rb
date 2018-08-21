def substrings string, dictionary
    substring_hash = {}
    dictionary.each do |dictionary_word|
        counts = string.downcase.scan(dictionary_word).count
        substring_hash[dictionary_word] = counts unless counts == 0
    end
    substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)