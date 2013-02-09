class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.integer :locale_id
      t.string :description

      t.timestamps
    end
    add_index :locales, [:locale_id]    
  end
end
