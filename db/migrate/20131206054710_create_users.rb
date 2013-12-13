class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :designation
      t.string :membershipno
      t.string :contactno
      t.text :address

      t.timestamps
    end
  end
end
