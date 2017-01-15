require 'net/http'

module PlayerHelper
	
	def self.competitive_url
		return 'https://api.lootbox.eu/pc/us/[battletag]/competitive/allHeroes/'
	end

	def self.getData(url_request)
		url = URI.parse(url_request)
		request = Net::HTTP::Get.new(url.to_s)
		response = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(request)
		}
		
		return response.body
	end
end
