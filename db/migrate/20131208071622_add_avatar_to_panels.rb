class AddAvatarToPanels < ActiveRecord::Migration
  def change
    add_column :panels, :avatar, :string
  end
end
