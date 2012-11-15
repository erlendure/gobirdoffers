# == Schema Information
#
# Table name: locales
#
#  id          :integer          not null, primary key
#  locale_id   :integer
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Locale < ActiveRecord::Base
  attr_accessible :description, :locale_id

  validates :description,  presence: true
  validates :locale_id, presence: true,  uniqueness: true  
end
