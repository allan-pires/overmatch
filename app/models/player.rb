class Player

  attr_accessor :username, :level, :quick_wins, :competitive_wins, :competitive_lost, :competitive_played, :playtime_quick, :playertime_competitive, :avatar, :competitive_rank, :competitive_rank_img, :star, :level_frame

	def self.getProfilePlayerData(battletag)
		player_request = getProfileUrlRequest(battletag)

    from_json(PlayerHelper.getData(player_request))
	end

	def self.getProfileUrlRequest(battletag)
		PlayerHelper.profile_url.sub("[battletag]", battletag)
	end

  def self.from_json(json)
    Player.new.tap do |player|
      unless json.nil?
        json = json['data']
        player.username = json["username"]
        player.level = json["level"]
        player.quick_wins = json["games"]["quick"]["wins"]
        player.competitive_wins = json["competitive"]["wins"]
        player.competitive_lost = json["competitive"]["lost"]
        player.competitive_played = json["competitive"]["played"]
        player.playtime_quick = json["playtime"]["quick"]
        player.playertime_competitive = json["playtime"]["competitive"]
        player.avatar = json["avatar"]
        player.competitive_rank = json["competitive"]["rank"]
        player.competitive_rank_img = json["competitive"]["rank_img"]
        player.level_frame = json["levelFrame"]
        player.star = json["star"]
      end
    end
  end

end
