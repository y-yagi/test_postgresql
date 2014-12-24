class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :tags, array: true
      t.integer :ratings, array: true

      t.timestamps null: false
    end
    add_index :books, :tags, using: 'gin'
    add_index :books, :ratings, using: 'gin'
  end
end
