class CreatePicpolls < ActiveRecord::Migration
  def change
    create_table :picpolls do |t|
      t.integer :user_id
      t.string :title
      t.string :message

      t.timestamps null: false
    end
  end
end
