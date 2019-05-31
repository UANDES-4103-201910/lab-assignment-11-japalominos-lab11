class Event < ApplicationRecord
  belongs_to :event_venue
  has_many :ticket_types
  accepts_nested_attributes_for :ticket_types, reject_if: lambda { |attributes| attributes[:price].blank? },allow_destroy: true
  has_one_attached :avatar    
 
end
