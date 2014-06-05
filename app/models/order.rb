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
