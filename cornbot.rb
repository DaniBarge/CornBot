require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new token: ENV['DISCORD_TOKEN']

bot.message(with_text: ["pop", "Pop", "POP"]) do |event|
  event.respond 'corn'
end

bot.message(containing: "🌽") do |event|
  event.respond File.readlines("cornfacts.txt").sample
end

bot.message(containing: ["Speedwagon", "speedwagon", "speed wagon", "Speed Wagon", "SPEEDWAGON", "Speed wagon"]) do |event|
  event.respond File.readlines("speedwagon.txt").sample
end

bot.run