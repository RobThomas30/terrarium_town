class Listing < ApplicationRecord
  belongs_to :user
  has_one_attached :picture

  # Validations for Listings
  validates :title, presence: true, length: {
    minimum: 6,
    maximum: 30,
    too_short: 'Please ensure the listing title is more then 5 characters',
    too_long: 'Please ensure listing title is less than 30 characters'
  }
  validates :description, presence: true, length: {
    minimum: 30,
    maximum: 300,
    too_short: 'Please ensure the listing description is more then 30 characters',
    too_long: 'Please ensure listing description is less than 300 characters'
  }

  validates :sale_type, presence: { message: 'Please select a sale type' }
  validates :size, presence: { message: 'Please select a terrarium size' }
end
