class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.uuid :identifier
      #t.column :identifier, :uuid

      t.timestamps null: false
    end
  end
end
