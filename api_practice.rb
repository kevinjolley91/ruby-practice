require "http"

response = HTTP.get("https://official-joke-api.appspot.com/random_joke")
joke = response.parse(:json)["setup"]
joke_answer = response.parse(:json)["punchline"]

puts "Would you like a joke?"
answer = gets.chomp
if answer == "yes"
  puts joke
  puts joke_answer
else
  puts joke
  puts joke_answer
end
