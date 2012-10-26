class ChangeColumnOnOffer < ActiveRecord::Migration
  def self.up
   change_column :offers, :featured, :boolean
  end

  def self.down
   change_column :offers, :featured, :string
  end
end
