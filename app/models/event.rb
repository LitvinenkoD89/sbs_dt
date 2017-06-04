class Event < ApplicationRecord
  validates :title, :address, :started_at, presence: true
  
  has_many :notepads, :class_name => 'Notepad'
  has_many :articles, through: :notepads

  scope :past, -> { where("started_at < ?", Time.now) }
  scope :future, -> { where("started_at > ?", Time.now) }
end
