# == Schema Information
#
# Table name: offer_categories
#
#  id          :integer          not null, primary key
#  category_id :integer
#  offer_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OfferCategory < ActiveRecord::Base
  attr_accessible :category_id, :offer_id

  belongs_to :category 
  belongs_to :offer

  validates :offer_id, presence: true    
  validates :category_id, presence: true  

end
