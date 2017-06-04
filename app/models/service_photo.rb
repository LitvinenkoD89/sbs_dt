class ServicePhoto < ApplicationRecord
  mount_uploader :link_photo, ImageUploader
  validates :title, :link_photo, presence: true

  belongs_to :service
end
