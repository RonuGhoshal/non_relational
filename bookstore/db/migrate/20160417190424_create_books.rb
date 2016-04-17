class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :author
      t.integer :release_year
      t.float :price
      t.text :description

      t.timestamps null: false
    end
  end
end
