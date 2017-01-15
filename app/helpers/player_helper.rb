require 'net/http'
require "open-uri"

module PlayerHelper

	def self.profile_url
		return 'https://api.lootbox.eu/pc/us/[battletag]/profile'
	end

	def self.competitive_url
		return 'https://api.lootbox.eu/pc/us/[battletag]/competitive/allHeroes/'
	end

	def self.getData(url_request)
		return ActiveSupport::JSON.decode(URI.parse(url_request).read)
	end

	def self.normalizeBattleTag(battletag)
		battletag.sub("#", "-")
	end

end
