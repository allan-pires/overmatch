class Competitive

  def getCompetitivePlayerData(battletag)
    player_request = getCompetitiveUrlRequest(battletag)

    PlayerHelper.getData(player_request)
  end

  def getCompetitiveUrlRequest(battletag)
    PlayerHelper.competitive_url.sub("[battletag]", battletag)
  end
end
