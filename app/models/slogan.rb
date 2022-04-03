class Slogan < ApplicationRecord
  validates :firstName, presence: true, length: { minimum: 3, maximum: 20 }
  validates :lastName, presence: true, length: { minimum: 3, maximum: 30 }
  validates :email, presence: true
  validates :suggestion, presence: true
end
