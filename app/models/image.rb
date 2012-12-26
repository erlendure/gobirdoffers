# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  offer_id   :integer
#  image_url  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Image < ActiveRecord::Base
  attr_accessible :image_url, :offer_id, :photo
 
  belongs_to :offer
  
  validates :offer_id, presence: true
end
