class Profile < ApplicationRecord
  belongs_to :user

  # Validations for Profile
  validates :username, presence: true, length: { 
    minimum: 5,
    maximum: 30,
    too_short: 'Please ensure your username is more then 5 characters',
    too_long: 'Please ensure your username is less than 30 characters' 
  }
end
