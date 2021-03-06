# == Schema Information
#
# Table name: bullet_points
#
#  id          :integer          not null, primary key
#  offer_id    :integer
#  bullet_text :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  sequence    :integer
#

class BulletPoint < ActiveRecord::Base
  attr_accessible :bullet_text, :offer_id, :sequence

  belongs_to :offer

  validates :offer_id, presence: true    
  validates :bullet_text, presence: true  
  
end
