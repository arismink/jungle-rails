class User < ApplicationRecord
  validates_uniqueness_of :email, on: :create
  # gives user model authentication methods via bcrypt
  has_secure_password

  validates :first_name, presence: true
  validates :last_name, presence: true
end
