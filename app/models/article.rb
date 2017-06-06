class Article < ApplicationRecord
  include Publication
  mount_uploader :photo, ImageUploader

  paginates_per 15
  
  validates :title, presence: true
  validate :must_have_photo_or_description
  
  has_many :notepads, :class_name => 'Notepad'
  has_many :events, through: :notepads
  
  def must_have_photo_or_description
    if !description.present? && !photo.present?
      errors.add(:description, "Новость должна иметь как минимум описание или фото")
    end
  end
end
