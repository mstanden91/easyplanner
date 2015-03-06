class Event < ActiveRecord::Base
  belongs_to :comunne
  belongs_to :user
end
