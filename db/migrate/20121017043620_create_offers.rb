class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :owner_id
      t.string :heading
      t.decimal :price
      t.decimal :discount
      t.string :details
      t.string :terms
      t.string :featured
      t.datetime :end_date
      t.datetime :expire_date_begin
      t.datetime :expire_date_end
      t.boolean :active
      t.integer :locale_id
      t.integer :user_id

      t.timestamps
    end
    add_index :offers, [:owner_id]
    add_index :offers, [:user_id]    
  end
end
