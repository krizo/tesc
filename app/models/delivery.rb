# == Schema Information
#
# Table name: deliveries
#
#  id           :integer          not null, primary key
#  date         :date
#  amount       :integer
#  comments     :text
#  instructions :text
#  created_at   :datetime
#  updated_at   :datetime
#  product_id   :integer
#  order_id     :integer
#

class Delivery < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  # validates :products, presence: true
end
