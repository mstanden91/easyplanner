  class List < ActiveRecord::Base
  belongs_to :user
  has_many :transport_rates
  has_many :comunnes, :through => :transport_rates
  has_many :products
  validates :name, presence: true
  end