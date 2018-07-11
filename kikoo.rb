require 'dotenv'
Dotenv.load
# ligne très importante qui appelle la gem. Sans elle, le programme ne saura pas appeler Twitter
require 'twitter'

# quelques lignes qui enregistrent les clés d'APIs
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["FIRST_CONSUMER_KEY"]
  config.consumer_secret     = ENV["FIRST_CONSUMER_SECRET"]
  config.access_token        = ENV["FIRST_ACCESS_TOKEN"]
  config.access_token_secret = ENV["FIRST_ACCESS_TOKEN_SECRET"]
end

# # ligne qui permet de tweeter

p client

#client.update("ça marche ou pas ????!!!")
#client.follow("HermetNicolas")
