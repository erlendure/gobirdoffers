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

require 'spec_helper'

describe Offer do
  pending "add some examples to (or delete) #{__FILE__}"
end
