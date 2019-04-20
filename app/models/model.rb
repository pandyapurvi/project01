# == Schema Information
#
# Table name: models
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  size       :text
#  drive      :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Model < ApplicationRecord
  has_many :cars
  has_and_belongs_to_many :users
end
