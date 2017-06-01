class Photo < ActiveRecord::Base
  include Publication
  mount_uploader :link_photo, ImageUploader
  validates :title, :link_photo, presence: true

  has_many :photoalbums, :class_name => 'Photoalbum'
  has_many :categories, through: :photoalbums
end
