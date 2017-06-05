class ServicePhoto < ApplicationRecord
  paginates_per 15
  mount_uploader :link_photo, ImageUploader
  validates :title, :link_photo, presence: true

  belongs_to :service
end
