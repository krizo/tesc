class User < ActiveRecord::Base
  has_many :orders
  validates :user_name, presence: true, uniqueness: true
end
