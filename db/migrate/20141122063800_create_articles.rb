class CreateArticles < ActiveRecord::Migration
  def change
    execute <<-SQL
      CREATE TYPE article_status AS ENUM ('draft', 'published');
    SQL
    create_table :articles do |t|
      t.column :status, :article_status
      t.timestamps null: false
    end
  end
end
