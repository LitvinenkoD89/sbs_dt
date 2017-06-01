class Event < ApplicationRecord
  validates :title, :address, :started_at, presence: true
  
  has_many :notepads, :class_name => 'Notepad'
  has_many :articles, through: :notepads
end
