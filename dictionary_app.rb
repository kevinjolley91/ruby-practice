require "http"

while true
  puts "Please enter a word: (enter 'q' when done)"
  word = gets.chomp
  if word == "q"
    break
  end

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

  dictionary_data = response.parse(:json)
  definitions = dictionary_data[1]["text"]

  puts "#{word} = #{definitions}"
end
