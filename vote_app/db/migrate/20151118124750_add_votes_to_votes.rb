class AddVotesToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :vote_count, :string
  end
end
