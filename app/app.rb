require 'json'
require 'rest-client'

url = "https://www.coinspot.com.au/pubapi/latest"
response = RestClient.get(url)
prices = JSON.parse(response)

puts "======================"
puts "======================"
puts "Welcome to Coin Prices"
puts "======================"
puts "======================"

prices["prices"].each_key do |key|
  puts "> #{key}"
end
puts "What coin do you want to check?"
print "> "
input = gets.chomp


puts input
puts "==="
puts "Bid: #{prices["prices"][input]["bid"]}"
puts "Ask: #{prices["prices"][input]["ask"]}"
puts "Last: #{prices["prices"][input]["last"]}"
