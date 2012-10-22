class OfferCategory < ActiveRecord::Base
  attr_accessible :category_id, :offer_id
end
# == Schema Information
#
# Table name: offer_categories
#
#  id          :integer         not null, primary key
#  category_id :integer
#  offer_id    :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

