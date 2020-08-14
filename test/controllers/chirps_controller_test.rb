require 'test_helper'

class ChirpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chirp = chirps(:one)
  end

  test "should get index" do
    @chirps = Array.new
    @chirps << @chirp
    get chirps_url
    assert_response :success
  end

  test "should get new" do
    get new_chirp_url
    assert_response :success
  end

  test "should get show" do
    get chirp_url(@chirp)
    assert_response :success
  end
end
