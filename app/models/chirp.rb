require "net/http"

class Chirp < ApplicationRecord
  validates :text, presence: true, length: { minimum: 10, maximum: 140 }
  has_many :votes

  def save_chirp
    Net::HTTP.post URI("https://bellbird.joinhandshake-internal.com/push"),
                   { chirp_id: id }.to_json
  end
end
