require 'test_helper'

class ChirpTest < ActiveSupport::TestCase
  test "can create a valid chirp" do
    @chirp = Chirp.new({text: 'a' * 130})
    assert @chirp.save 
  end

  test "does not create a chirp with no text" do
    @chirp = Chirp.new
    assert_not @chirp.save 
  end

  test "does not create a chirp with too short text" do
    @chirp = Chirp.new({text: 'a' * 3})
    assert_not @chirp.save
  end

  test "does not create a chirp with too long text" do
    @chirp = Chirp.new({text: 'a' * 300})
    assert_not @chirp.save
  end
end
