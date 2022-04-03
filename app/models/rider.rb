class Rider < ApplicationRecord
  validates :firstName, presence: true
  validates :lastName, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :position, presence: true 
end
