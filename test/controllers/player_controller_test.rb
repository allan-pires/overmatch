require 'test_helper'

class PlayerControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get player_search_url
    assert_response :success
  end

end
