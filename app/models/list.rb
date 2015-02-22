class List < ActiveRecord::Base
  has_many :transport_rates
  has_many :communes, :through => :transport_rates

end
