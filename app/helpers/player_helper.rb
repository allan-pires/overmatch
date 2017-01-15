require 'net/http'
require "open-uri"

module PlayerHelper
	
	def self.competitive_url
		return 'https://api.lootbox.eu/pc/us/[battletag]/competitive/allHeroes/'
	end

	def self.getData(url_request)
		return URI.parse(url_request).read
	end
end
