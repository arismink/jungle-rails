class User < ApplicationRecord
  validates_uniqueness_of :email, :case_sensitive => false, on: :create
  # gives user model authentication methods via bcrypt
  has_secure_password
  validates_length_of :password, minimum: 4

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
