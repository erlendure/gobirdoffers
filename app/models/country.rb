class Country < ActiveRecord::Base
  attr_accessible :country_name, :default_locale_id

  validates :country_name,  presence: true
  validates :default_locale_id, presence: true
end

# == Schema Information
#
# Table name: countries
#
#  id                :integer         not null, primary key
#  country_name      :string(255)
#  default_locale_id :integer
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#

