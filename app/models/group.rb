class Group < ApplicationRecord
  belongs_to :game
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :user_groups, dependent: :destroy
  has_many :users, through: :user_groups
  has_one :chatroom
end
