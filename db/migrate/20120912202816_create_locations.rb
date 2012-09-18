class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :title
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
