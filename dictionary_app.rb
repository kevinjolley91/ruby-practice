require "http"

puts "Please enter a word:"
word = gets.chomp

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=b05bbefa71250039e60030a86260994d095206c2efdc555ad")

dictionary_data = response.parse(:json)
definitions = dictionary_data[1]["text"]

puts "#{word} = #{definitions}"
