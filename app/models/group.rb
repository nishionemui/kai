class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users

  validates :name, presence: true
  validates :age, presence: true
  validates :height, presence: true
  validates :weight, presence: true


  
end
