class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.float :price, null: false
      t.text :description, null: false
      t.integer :subject_id, null: false

      t.timestamps null: false
    end
  end
end
