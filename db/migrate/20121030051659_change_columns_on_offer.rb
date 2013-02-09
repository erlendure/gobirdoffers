class ChangeColumnsOnOffer < ActiveRecord::Migration
  def up
    change_column :offers, :details, :text
    change_column :offers, :terms, :text    
  end

  def down
    change_column :offers, :details, :string
    change_column :offers, :terms, :string      	
  end
end
