class AddAttachmentImageOneToPolls < ActiveRecord::Migration
  def self.up
    change_table :polls do |t|
      t.attachment :image_one
    end
  end

  def self.down
    remove_attachment :polls, :image_one
  end
end
