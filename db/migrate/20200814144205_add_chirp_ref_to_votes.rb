class AddChirpRefToVotes < ActiveRecord::Migration[6.0]
  def change
    add_reference :votes, :chirp, foreign_key: true
  end
end
