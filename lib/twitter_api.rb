class TwitterApi
	def client
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = ENV['CONSUMER_KEY']
		  config.consumer_secret     = ENV['CONSUMER_SECRET']
		  config.access_token        = ENV['ACCESS_TOKEN']
		  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
		end
	end

	def trends location
		client.settings(trend_location_woeid: '23424803')
		client.trends
	end
end

# UpYdMY7i