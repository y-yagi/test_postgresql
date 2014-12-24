class CreateContacts < ActiveRecord::Migration
  def change
    execute <<-SQL
     CREATE TYPE full_address AS
     (
       city VARCHAR(90),
       street VARCHAR(90)
     );
    SQL
    create_table :contacts do |t|
      t.column :address, :full_address
    end
  end
end
