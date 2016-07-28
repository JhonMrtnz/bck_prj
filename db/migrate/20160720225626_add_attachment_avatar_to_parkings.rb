class AddAttachmentAvatarToParkings < ActiveRecord::Migration
  def self.up
    change_table :parkings do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :parkings, :avatar
  end
end
