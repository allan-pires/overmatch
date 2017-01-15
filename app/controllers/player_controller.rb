class PlayerController < ApplicationController

	def search
		battletag = PlayerHelper.normalizeBattleTag(params[:battletag])
		@player_info = Player.getProfilePlayerData(battletag)
	end

end
