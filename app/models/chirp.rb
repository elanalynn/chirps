require "net/http"

class Chirp < ApplicationRecord

  def save_chirp
    Net::HTTP.post URI("https://bellbird.joinhandshake-internal.com/push"),
                   { chirp_id: id }.to_json
  end
end
