# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :text
#  admin           :boolean          default(FALSE)
#

class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  validates :email, :presence => true, :uniqueness => true #go to the rails guidelines to understand validation.
  # (cant create a User without an email and has to be unique in the db)
end
