class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :offer_id
      t.text :image_url

      t.timestamps
    end
  end
end
