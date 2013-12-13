class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.date :date
      t.text :detail

      t.timestamps
    end
  end
end
