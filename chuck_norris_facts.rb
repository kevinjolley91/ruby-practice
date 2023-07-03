require "http"

puts "Would you like a random 'Chuck Norris' fact?"
answer = gets.chomp

response = HTTP.get("https://api.chucknorris.io/jokes/random")
joke = response.parse(:json)["value"]

if answer == "yes"
  puts joke
else
  puts joke
end
