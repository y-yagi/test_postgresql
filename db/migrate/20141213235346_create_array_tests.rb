class CreateArrayTests < ActiveRecord::Migration
  def change
    create_table :array_tests do |t|
      t.string    :string_array,                array: true
      t.string    :string_array_with_index,     array: true
      t.integer   :integer_array,               array: true
      t.boolean   :boolean_array,               array: true
      t.date      :date_array,                  array: true
      t.datetime  :date_time_array,             array: true

      t.timestamps null: false
    end
    add_index :array_tests, :string_array_with_index, using: 'gin'
  end
end
