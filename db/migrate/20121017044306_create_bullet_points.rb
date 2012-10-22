class CreateBulletPoints < ActiveRecord::Migration
  def change
    create_table :bullet_points do |t|
      t.integer :offer_id
      t.string :bullet_text

      t.timestamps
    end
  end
end
