class CreateProfiles < ActiveRecord::Migration
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')
    create_table :profiles do |t|
      t.hstore :settings

      t.timestamps null: false
    end
  end
end
