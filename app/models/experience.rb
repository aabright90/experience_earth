class Experience < ApplicationRecord
  validates :location, presence: true
  validates :description, presence: true
  validates :contact, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :experience_dates, presence: true
end
