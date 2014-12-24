class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.column :settings, "bit(8)"
      t.timestamps null: false

    end
  end
end
