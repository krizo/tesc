# == Schema Information
#
# Table name: buildings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  investor   :string(255)
#  address    :text
#  city       :string(255)
#  zip        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Building < ActiveRecord::Base
  has_many :orders
  validates :name, presence: true
end
