class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :address1
      t.string :address3
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.integer :country_id
      t.string :email
      t.string :url
      t.integer :locale_id
      t.string :access_level

      t.timestamps
    end
    add_index :users, [:name]
  end
end
