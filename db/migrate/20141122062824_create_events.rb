class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.json :payload
 #     t.jsonb :detail
      t.daterange :duration

      t.timestamps null: false
    end
 #   add_index(:events, :detail, using: 'gin')
  end
end
