class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.json :payload
      t.jsonb :payloadb
      t.daterange :duration

      t.timestamps null: false
    end
#    add_index(:events, :payload, using: 'gin')
    add_index(:events, :payloadb, using: 'gin')
  end
end
