class Owner < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :city, :contact_address1, :contact_address2, :contact_address3, :contact_city, :contact_country_id, :contact_email, :contact_name, :contact_phone, :contact_state, :contact_zip, :country_id, :email, :locale_id, :name, :phone, :state, :url, :zip
end
# == Schema Information
#
# Table name: owners
#
#  id                 :integer         not null, primary key
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
#  locale_id          :integer
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#

