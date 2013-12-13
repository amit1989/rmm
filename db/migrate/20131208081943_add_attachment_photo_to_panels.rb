class AddAttachmentPhotoToPanels < ActiveRecord::Migration
  def self.up
    change_table :panels do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :panels, :photo
  end
end
