class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title
      t.text :message

      t.timestamps null: false
    end
  end
end
