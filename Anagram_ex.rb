input = ["stars", "mary", "tars", "rats", "army", "banana"]
store = {}

result = [] # create a container

input.each do |word|
  puts "The word = #{word}"
  anagrams = [] # create another container
  puts "anagrams = #{anagrams.inspect}"
  input.each do |another_word| # => stars
    puts "another word = #{another_word}"
      if word.chars.sort == another_word.chars.sort
        puts "they are anagrams of each other"
         # result << anagrams
         anagrams << another_word
         puts "so, anagrams now is #{anagrams.inspect}"
        else
          puts "they are not anagrams"
      end 
  end   
  puts "now we're out of words to check"
  puts 'adding anagrams to result'
   # add anagrams to the original container
  result << anagrams
  puts "result = #{result.inspect}"
  # puts result.inspect
end 


# remove duplicates
# print the result on the screen
puts result.uniq.inspect

# 1. result = [], anagrams = [], word = 'stars', another_word = 'stars'
# 2. result = [], anagrams = ['stars'], word = 'stars', another_word = 'stars'
# 3. result = [['stars']], anagrams = ['stars'], word = 'stars', another_word = 'stars'
# 4. result = [['stars']], anagrams = [], word = 'mary'
# 4. result = [['stars']], anagrams = [], word = 'mary', another_word = 'stars'
# 4. result = [['stars']], anagrams = [], word = 'mary', another_word = 'mary'
# 4. result = [['stars']], anagrams = ['mary'], word = 'mary', another_word = 'mary'
# 4. result = [['stars']], anagrams = ['mary'], word = 'mary', another_word = 'army'
# 4. result = [['stars']], anagrams = ['mary', 'army'], word = 'mary', another_word = 'army'
# 4. result = [['stars'], ['mary', 'army']], anagrams = ['mary', 'army'], word = 'mary', another_word = 'army'
