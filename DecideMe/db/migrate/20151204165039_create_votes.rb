class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :count
      t.references :user, index: true, foreign_key: true
      t.references :picpoll, index: true, foreign_key: true
      t.references :textpoll, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
