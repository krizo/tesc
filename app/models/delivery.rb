class Delivery < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  # validates :products, presence: true
end
