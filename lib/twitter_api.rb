class TwitterApi
	def client
		client = Twitter::REST::Client.new do |config|
		  config.consumer_key        = Rails.application.secrets.twitter_consumer_key
		  config.consumer_secret     = Rails.application.secrets.twitter_consumer_secret
		  config.access_token        = Rails.application.secrets.twitter_access_token
		  config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
		end
	end

	def trends location
		# client.settings(trend_location_woeid: location) # '23424803' 1528488
		client.trends(location)
	end
end