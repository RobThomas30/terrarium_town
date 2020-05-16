class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_many :listings
  has_many :favourites
  after_create :create_profile
  
  private
    def create_profile
      Profile.create(user: self, username: "#{Faker::Books::Lovecraft.word.capitalize + Faker::Space.galaxy}")
      puts "created user profile"
    end
end
