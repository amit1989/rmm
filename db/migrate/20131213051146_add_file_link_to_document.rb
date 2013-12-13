class AddFileLinkToDocument < ActiveRecord::Migration
  def change
    add_column :documents, :file_link, :string
  end
end
