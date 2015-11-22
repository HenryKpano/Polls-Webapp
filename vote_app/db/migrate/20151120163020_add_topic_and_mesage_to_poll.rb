class AddTopicAndMesageToPoll < ActiveRecord::Migration
  def change
    add_column :polls, :topic, :string
    add_column :polls, :mesage, :string
  end
end
