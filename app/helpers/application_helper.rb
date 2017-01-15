require 'net/http'

module ApplicationHelper
	
	QUICKPLAY_URL = 'https://api.lootbox.eu/pc/us/[battletag]/quickplay/allHeroes/'
	COMPETITIVE_URL = 'https://api.lootbox.eu/pc/us/[battletag]/competitive/allHeroes/'
	SEPARATOR_CHAR = "%23"

	def getCompetitivePlayerData(battletag)
		player_request = getUrlRequest

		return getData(player_request)
	end

	def getUrlRequest(battletag)
		normalized_tag = normalizeBattleTag(battletag)

		return COMPETITIVE_URL.sub("[battletag]", normalized_tag)
	end

	def normalizeBattleTag(battletag)
		return battletag.sub("#", SEPARATOR_CHAR)
	end

	def getData(url_request)
		url = URI.parse(url_request)
		request = Net::HTTP::Get.new(url.to_s)
		response = Net::HTTP.start(url.host, url.port) {|http|
		  http.request(request)
		}
		
		return response.body
	end
	
end
