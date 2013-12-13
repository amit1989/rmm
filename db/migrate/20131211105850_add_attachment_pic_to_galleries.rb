class AddAttachmentPicToGalleries < ActiveRecord::Migration
  def self.up
    change_table :galleries do |t|
      t.attachment :pic
    end
  end

  def self.down
    drop_attached_file :galleries, :pic
  end
end
