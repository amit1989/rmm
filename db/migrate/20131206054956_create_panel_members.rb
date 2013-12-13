class CreatePanelMembers < ActiveRecord::Migration
  def change
    create_table :panel_members do |t|
      t.string :name
      t.string :email
      t.string :designation
      t.string :membershipno
      t.string :contactno
      t.text :detail

      t.timestamps
    end
  end
end
