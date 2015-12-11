class CreateTextpolls < ActiveRecord::Migration
  def change
    create_table :textpolls do |t|
      t.integer :user_id
      t.string :title
      t.string :first_msg
      t.string :second_msg

      t.timestamps null: false
    end
  end
end
