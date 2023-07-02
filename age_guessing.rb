require "http"

puts "What is your name? I'll try to guess your age and gender."
name = gets.chomp

response = HTTP.get("https://api.agify.io?name=#{name}")
guess = response.parse(:json)["age"]

response = HTTP.get("https://api.genderize.io?name=#{name}")
guess2 = response.parse(:json)["gender"]

puts "You are #{guess} years old and are #{guess2}!"
