class BulletPoint < ActiveRecord::Base
  attr_accessible :bullet_text, :offer_id
end
# == Schema Information
#
# Table name: bullet_points
#
#  id          :integer         not null, primary key
#  offer_id    :integer
#  bullet_text :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

