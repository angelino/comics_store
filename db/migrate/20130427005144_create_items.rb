class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.text :description
      t.string :publisher
      t.date :published_at
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end
