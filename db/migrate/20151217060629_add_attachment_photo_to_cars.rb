class AddAttachmentPhotoToCars < ActiveRecord::Migration
  def self.up
    change_table :cars do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :cars, :photo
  end
end
