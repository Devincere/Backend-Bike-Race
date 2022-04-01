class Slogan < ApplicationRecord
  validates :firstName, presence: true, length: { minimum: 3, maximum: 10 }
  validates :email, presence: true
end
