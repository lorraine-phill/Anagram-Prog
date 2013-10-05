

input = ["stars", "mary", "tars", "rats", "army", "banana"]
result = [] # create a container 

input.each do |word|
  anagrams = [] # create another container
  
  input.each do |another_word| 
      if word.chars.sort == another_word.chars.sort #sort and compare
         anagrams << another_word # If same, then add to containen
      end 
  end   

  result << anagrams

end 

puts result.uniq.inspect
