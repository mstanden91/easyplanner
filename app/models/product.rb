class Product < ActiveRecord::Base
  belongs_to :user
  has_one :category
  has_one :timeservice
  has_one :maxcapacity
  has_many :transport_rates, :through => :lists
  has_many :comunnes, :through => :transport_rates
  has_many :additionals
  has_many :ageranges
  has_one :list
end
