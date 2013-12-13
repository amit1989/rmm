class CreatePanels < ActiveRecord::Migration
  def change
    create_table :panels do |t|
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
