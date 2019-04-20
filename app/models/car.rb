# == Schema Information
#
# Table name: cars
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  image      :text
#  seat       :integer
#  price      :text
#  brand_id   :integer
#  model_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Car < ApplicationRecord
  belongs_to :brand, :optional => true
  belongs_to :model, :optional => true
  has_many :reviews
end
