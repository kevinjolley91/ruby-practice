require "http"

puts "What is your name? I'll try to guess your age."
name = gets.chomp

response = HTTP.get("https://api.agify.io?name=#{name}")
guess = response.parse(:json)["age"]

puts guess
