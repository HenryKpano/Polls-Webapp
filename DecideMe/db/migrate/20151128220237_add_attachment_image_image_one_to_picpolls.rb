class AddAttachmentImageImageOneToPicpolls < ActiveRecord::Migration
  def self.up
    change_table :picpolls do |t|
      t.attachment :image
      t.attachment :image_one
    end
  end

  def self.down
    remove_attachment :picpolls, :image
    remove_attachment :picpolls, :image_one
  end
end
