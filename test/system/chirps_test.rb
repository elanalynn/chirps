require "application_system_test_case"

class ChirpsTest < ApplicationSystemTestCase
  setup do
    @chirp = chirps(:one)
  end

  test "visiting the index" do
    visit chirps_url
    assert_selector "h1", text: "Chirps"
  end
end
