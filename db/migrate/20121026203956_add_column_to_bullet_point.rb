class AddColumnToBulletPoint < ActiveRecord::Migration
  def change
    add_column :bullet_points, :sequence, :integer
  end
end
