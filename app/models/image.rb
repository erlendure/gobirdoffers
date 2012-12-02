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

  has_attached_file :photo
  
  belongs_to :offer
  
  validates :offer_id, presence: true
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes  
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
