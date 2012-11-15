# == Schema Information
#
# Table name: owners
#
#  id                 :integer          not null, primary key
#  name               :string(255)
#  address1           :string(255)
#  address3           :string(255)
#  address2           :string(255)
#  city               :string(255)
#  state              :string(255)
#  zip                :string(255)
#  phone              :string(255)
#  country_id         :integer
#  email              :string(255)
#  url                :string(255)
#  contact_name       :string(255)
#  contact_address1   :string(255)
#  contact_address3   :string(255)
#  contact_address2   :string(255)
#  contact_city       :string(255)
#  contact_state      :string(255)
#  contact_zip        :string(255)
#  contact_phone      :string(255)
#  contact_country_id :integer
#  contact_email      :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#

class Owner < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :city, :contact_address1, :contact_address2, :contact_address3, :contact_city, :contact_country_id, :contact_email, :contact_name, :contact_phone, :contact_state, :contact_zip, :country_id, :email, :name, :phone, :state, :url, :zip

  belongs_to :user
  
  has_many :offers

  before_save { |owner| owner.email = email.downcase }
  before_save { |owner| owner.contact_email = contact_email.downcase } 

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :contact_email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :name, presence: true, uniqueness: { case_sensitive: false, scope: :user_id}
  validates :name, presence: true
end
