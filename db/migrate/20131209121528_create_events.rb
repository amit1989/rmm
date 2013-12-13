class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.text :detail

      t.timestamps
    end
  end
end
