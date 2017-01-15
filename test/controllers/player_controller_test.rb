require 'test_helper'

class PlayerControllerTest < ActionDispatch::IntegrationTest

	attr_accessor :player_controller

	setup do
		@player_controller = PlayerController.new
	end

	test "should normalize battletag" do
		normalizedBattleTag = @player_controller.normalizeBattleTag("Dois#11104")
		assert_equal "Dois-11104", normalizedBattleTag
	end

end
