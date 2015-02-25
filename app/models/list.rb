class List < ActiveRecord::Base
  has_many :transport_rates
  has_many :communes, :through => :transport_rates
  has_many :products
  validates :name, presence: true
end
