class TransportRate < ActiveRecord::Base
  belongs_to :list
  belongs_to :comunne
  has_many :products, :through => :list
end
