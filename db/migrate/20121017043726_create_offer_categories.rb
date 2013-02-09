class CreateOfferCategories < ActiveRecord::Migration
  def change
    create_table :offer_categories do |t|
      t.integer :category_id
      t.integer :offer_id

      t.timestamps
    end
  end
end
