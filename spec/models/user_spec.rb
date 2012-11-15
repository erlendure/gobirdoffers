# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  address1        :string(255)
#  address3        :string(255)
#  address2        :string(255)
#  city            :string(255)
#  state           :string(255)
#  zip             :string(255)
#  phone           :string(255)
#  country_id      :integer
#  email           :string(255)
#  url             :string(255)
#  access_level    :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  username        :string(255)
#  password_digest :string(255)
#  remember_token  :string(255)
#  admin           :boolean          default(FALSE)
#

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
