class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
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
      t.string :contact_name
      t.string :contact_address1
      t.string :contact_address3
      t.string :contact_address2
      t.string :contact_city
      t.string :contact_state
      t.string :contact_zip
      t.string :contact_phone
      t.integer :contact_country_id
      t.string :contact_email
      t.integer :locale_id

      t.timestamps
    end
    add_index :owners, [:name]
  end
end
