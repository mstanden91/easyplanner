class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :lists
  has_many :events
  has_many :transport_rates, :through => :lists
  has_many :comunnes, :through => :transport_rates
end
