class Offer < ActiveRecord::Base
  attr_accessible :active, :details, :discount, :end_date, :expire_date_begin, :expire_date_end, :featured, :heading, :locale_id, :price, :terms

  belongs_to :user

  validates :user_id, presence: true
  validates :owner_id, presence: true

  default_scope order: 'offers.created_at DESC'  
end

# == Schema Information
#
# Table name: offers
#
#  id                :integer         not null, primary key
#  owner_id          :integer
#  heading           :string(255)
#  price             :decimal(, )
#  discount          :decimal(, )
#  details           :string(255)
#  terms             :string(255)
#  featured          :string(255)
#  end_date          :datetime
#  expire_date_begin :datetime
#  expire_date_end   :datetime
#  active            :boolean
#  locale_id         :integer
#  user_id           :integer
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

