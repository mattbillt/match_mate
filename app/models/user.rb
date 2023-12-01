class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_groups
  has_many :groups, through: :user_groups

  # ISSO NÂO ERA NECESSÁRIO
  # attr_accessor :name, :language, :favorite_team, :preferences, :photo

  has_one_attached :photo

end
