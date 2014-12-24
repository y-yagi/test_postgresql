class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.binary :payload

      t.timestamps null: false
    end
  end
end
