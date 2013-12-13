class AddAttachmentDocToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :doc
    end
  end

  def self.down
    drop_attached_file :events, :doc
  end
end
