# == Schema Information
#
# Table name: orders
#
#  id                   :integer          not null, primary key
#  comment              :string(255)
#  date                 :date             default(Thu, 05 Jun 2014)
#  created_at           :datetime
#  updated_at           :datetime
#  user_id              :integer
#  requester_id         :integer          default(1)
#  status               :string(255)      default("Nowe")
#  payment_type         :string(255)      default("Przelew")
#  contract_nr          :string(255)
#  contract_details     :text
#  recipient            :text
#  driving_instructions :text
#  contact_person       :text
#  hot                  :boolean
#  sap                  :integer
#  name                 :string(255)
#  building_id          :integer
#

class Order < ActiveRecord::Base
  belongs_to :requester
  belongs_to :user
  belongs_to :building
  has_many :deliveries
  before_save :default_values
  validates :name, presence: true
  validates :building_id, presence: true


  private
  def default_values
    self.date ||= Time.now
    self.requester = Requester.first
    self.user ||= User.first
    self.status ||= "Nowe"
  end
end
