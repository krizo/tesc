# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  depth      :integer
#  width      :integer
#  length     :integer
#  amount     :integer
#  date       :date
#  comments   :text
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
  has_many :deliveries
end
