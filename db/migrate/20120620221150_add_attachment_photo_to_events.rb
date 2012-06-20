class AddAttachmentPhotoToEvents < ActiveRecord::Migration
  def self.up
    add_attachment :events, :photo
  end

  def self.down
    remove_attachment :events, :photo
  end
end
