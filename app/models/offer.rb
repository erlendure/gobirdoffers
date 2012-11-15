# == Schema Information
#
# Table name: offers
#
#  id                :integer          not null, primary key
#  owner_id          :integer
#  heading           :string(255)
#  price             :decimal(, )
#  discount          :decimal(, )
#  details           :text(255)
#  terms             :text(255)
#  featured          :boolean
#  end_date          :datetime
#  expire_date_begin :datetime
#  expire_date_end   :datetime
#  active            :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Offer < ActiveRecord::Base
  attr_accessible :owner_id, :active, :details, :discount, :end_date, :expire_date_begin, :expire_date_end, :featured, :heading, :price, :terms

  belongs_to :owner
  
  has_many :images, dependent: :destroy  
  has_many :bullet_points, dependent: :destroy
  has_many :offer_categories, dependent: :destroy  

  validates :owner_id, presence: true

  default_scope order: 'offers.featured DESC, offers.created_at DESC'  
end

