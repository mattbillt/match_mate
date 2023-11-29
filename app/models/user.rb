class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_groups
  has_many :groups, through: :user_groups

  attr_accessor :name, :language, :favorite_team, :preferences, :profile_picture

  mount_uploader :profile_picture, ProfilePictureUploader
end
