class PlayerController < ApplicationController

	def search
		@playerinfo = "{}"
		battletag = normalizeBattleTag(params[:battletag])

		@player_info = getCompetitivePlayerData(battletag)
	end

	def normalizeBattleTag(battletag)
		battletag.sub("#", "-")
	end

	def getCompetitivePlayerData(battletag)
		player_request = getUrlRequest(battletag)

		return PlayerHelper.getData(player_request)
	end

	def getUrlRequest(battletag)
		return PlayerHelper.competitive_url.sub("[battletag]", battletag)
	end


end
