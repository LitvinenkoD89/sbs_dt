class News < ApplicationRecord
  include Publication
  mount_uploader :photo, ImageUploader

  validates :title, presence: true
  validate :must_have_photo_or_description
  has_many :news_events
  has_many :events, through: :news_events
  
  def must_have_photo_or_description
    if !description.present? && !photo.present?
      errors.add(:description, "Новость должна иметь как минимум описание или фото")
    end
  end
end
