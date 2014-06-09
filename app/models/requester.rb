# == Schema Information
#
# Table name: requesters
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  street          :string(255)
#  zip_code        :string(255)
#  city            :string(255)
#  logo_image_name :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Requester < ActiveRecord::Base
  has_many :orders
  validates :name, presence: true
end
