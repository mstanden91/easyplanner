class Comunne < ActiveRecord::Base
  has_many :transport_rates
  has_many :lists, :through => :transport_rates
end
