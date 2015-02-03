class BBC
	def get url
		header = {
			"X-Candy-Platform" => "Desktop",
			"X-Candy-Audience" => "International",
			"Accept" => "application/json"
		}
		HTTParty.get(url, {headers: header})
	end
end