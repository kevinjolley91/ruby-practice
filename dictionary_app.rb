require "http"

while true
  puts "Please enter a word: (enter 'q' when done)"
  word = gets.chomp
  if word == "q"
    break
  else
    response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=")

    response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/audio?useCanonical=false&limit=50&api_key=")

    dictionary_data = response.parse(:json)
    pronounciation_data = response2.parse(:json)
    definitions = dictionary_data[1]["text"]
    pronounciation = pronounciation_data[0]["fileUrl"]

    puts "#{word} = #{definitions}"
    system("open", pronounciation)
  end
end
