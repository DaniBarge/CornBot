require 'discordrb'
require 'dotenv/load'

bot = Discordrb::Bot.new token: ENV['DISCORD_TOKEN']

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.message(containing: "🌽") do |event|
  event.respond File.readlines("cornfacts.txt").sample
end

bot.run