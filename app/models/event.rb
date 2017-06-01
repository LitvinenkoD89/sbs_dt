class Event < ApplicationRecord
  validates :title, :address, :started_at, presence: true
  has_many :news_events
  has_many :news, through: :news_events
end
