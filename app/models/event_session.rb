class EventSession < ApplicationRecord
  has_many :registrations, dependent: :destroy
  validates :name, :date, :location, presence: true
end

