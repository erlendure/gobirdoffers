class User < ActiveRecord::Base
  attr_accessible :access_level, :address1, :address2, :address3, :city, :country_id, :email, :locale_id, :name, :phone, :state, :url, :zip, :username, :password, :password_confirmation

  has_secure_password

  has_many :offers

  before_save { |user| user.email = email.downcase }
  before_save { |user| user.username = username.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :username, presence:   true,  uniqueness: { case_sensitive: false }  
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end  
end

# == Schema Information
#
# Table name: users
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  address1     :string(255)
#  address3     :string(255)
#  address2     :string(255)
#  city         :string(255)
#  state        :string(255)
#  zip          :string(255)
#  phone        :string(255)
#  country_id   :integer
#  email        :string(255)
#  url          :string(255)
#  locale_id    :integer
#  access_level :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

