class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.inet :ip
      t.cidr :network
      t.macaddr :address
      t.timestamps null: false
    end
  end
end
