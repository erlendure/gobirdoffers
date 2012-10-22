class Category < ActiveRecord::Base
  attr_accessible :cat_description, :cat_name, :locale_id
end
# == Schema Information
#
# Table name: categories
#
#  id              :integer         not null, primary key
#  cat_name        :string(255)
#  cat_description :string(255)
#  locale_id       :integer
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#

