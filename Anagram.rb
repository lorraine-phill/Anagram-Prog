=begin
    You're given a list of strings, return a list of list of strings of anagrams, .e. each element of the returned list is a list of words that are anagrams among them.
    For example: input   [stars, mary, rats, tars, army, banana] and output: [ [rats, tars], [army, mary], [stars], [banana] ].
=end

= ["stars", "mary", "tars", "rats", "army", "banana"]
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
