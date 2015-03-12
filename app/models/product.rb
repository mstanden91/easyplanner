class Product < ActiveRecord::Base
  belongs_to :user
  has_one :category
  has_one :timeservice
  has_one :maxcapacity
  has_many :transport_rates, :through => :list
  has_many :comunnes, :through => :transport_rates
  has_many :additionals
  has_many :ageranges
  belongs_to :list

  validates :timeservice_id, presence: true
  validates :list_id, presence: true

end
