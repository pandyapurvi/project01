# == Schema Information
#
# Table name: brands
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Brand < ApplicationRecord
  has_many :cars
end
