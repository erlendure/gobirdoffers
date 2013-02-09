class ChangeColumnOnOffer < ActiveRecord::Migration
  def up
    remove_column :offers, :featured
    add_column :offers, :featured, :boolean    
  end

  def down
    remove_column :offers, :featured  	
    add_column :offers, :featured, :string
  end
end

