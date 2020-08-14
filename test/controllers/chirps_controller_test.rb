require 'test_helper'

class ChirpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chirp = chirps(:one)
  end

  test "should get index" do
    get chirps_url
    assert_response :success
  end
end
