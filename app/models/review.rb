# == Schema Information
#
# Table name: reviews
#
#  id         :bigint(8)        not null, primary key
#  rating     :integer
#  comment    :text
#  username   :text
#  car_id     :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :car, :optional => true
  validates :rating, :inclusion => { :in => 1..5 }
end
